package nju.software.service.impl;

import java.io.ObjectOutputStream.PutField;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.jbpm.task.query.TaskSummary;
import org.jbpm.workflow.instance.WorkflowProcessInstance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import nju.software.dao.impl.MoneyDAO;
import nju.software.dao.impl.OrderDAO;
import nju.software.dao.impl.QuoteDAO;
import nju.software.dataobject.Money;
import nju.software.dataobject.Order;
import nju.software.dataobject.Quote;
import nju.software.model.SampleMoneyConfirmTaskSummary;
import nju.software.service.FinanceService;
import nju.software.util.JbpmAPIUtil;


@Service("financeServiceImpl")
public class FinanceServiceImpl implements FinanceService {
	
	@Autowired
	private JbpmAPIUtil jbpmAPIUtil;
	@Autowired
	private OrderDAO orderDAO;
	@Autowired
	private QuoteDAO quoteDAO;
	@Autowired
	private MoneyDAO moneyDAO;
	
	private String actorId="CAIWUZHUGUAN";
	
	@Override
	public List<SampleMoneyConfirmTaskSummary> getSampleMoneyConfirmTaskSummaryList() {
		// TODO Auto-generated method stub
		
		List<TaskSummary> list =jbpmAPIUtil.getAssignedTasksByTaskname(actorId, "comfirm_sample");
		List<SampleMoneyConfirmTaskSummary>taskList=new ArrayList<>();
		
		for(TaskSummary task:list){
			Integer orderId=(Integer) getVariable(task, "orderId");
			Order order=orderDAO.findById(orderId);
			Quote quote=(Quote) quoteDAO.findByProperty("orderId", orderId).get(0);
			taskList.add(SampleMoneyConfirmTaskSummary.getInstance(order, quote));
		}
		return taskList;
	}

	@Override
	public SampleMoneyConfirmTaskSummary getSampleMoneyConfirmTask(long taskId,Integer orderId) {
		// TODO Auto-generated method stub
		return null;
	}

	
	@Override
	public void sampleMoneyConfirm(long taskId, Money money) {
		// TODO Auto-generated method stub
		moneyDAO.save(money);
		Map<String,Object>data=new HashMap<String,Object>();
		data.put("receivedsamplejin", true);
		try {
			jbpmAPIUtil.completeTask(taskId, data, actorId);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void sampleMoneyNoConfirm(long taskId) {
		// TODO Auto-generated method stub
		Map<String,Object>data=new HashMap<String,Object>();
		data.put("receivedsamplejin", false);
		try {
			jbpmAPIUtil.completeTask(taskId, data, actorId);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	private Object getVariable(TaskSummary task,String name){
		long processId = task.getProcessInstanceId();
		WorkflowProcessInstance process=(WorkflowProcessInstance) jbpmAPIUtil.getKsession().getProcessInstance(processId);
		return process.getVariable("orderId");
	}
}