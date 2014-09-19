<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="/common/header.jsp"%>

<div class="maincontent">
	<div class="maincontentinner">
			<div class="row-fluid" style="min-height:300px;">
			<!--  如果是其它页面，这里是填充具体的内容。 -->
			<ul class="nav nav-tabs detail" id="tab">
				<li class="task-name">毛衣样衣确认和工艺制作</li>
				<!-- 
 				<li><a href="#quote" data-toggle="tab">报价信息</a></li>
				<li><a href="#cad" data-toggle="tab">版型信息</a></li>
				<li><a href="#produce" data-toggle="tab">加工信息</a></li>
				<li><a href="#sample" data-toggle="tab">样衣信息</a></li>
				 -->
				
				<li class="active"><a href="#sweater" data-toggle="tab">毛衣样衣确认和工艺制作</a> </li>
				<li><a href="#material" data-toggle="tab">面辅信息</a></li>
				<li><a href="#basic" data-toggle="tab">基本信息</a></li>
			</ul>

			<div class="tab-content">
				<div class="tab-pane" id="basic">
					<%@include file="/views/common/basic.jsp"%>
				</div>
				
				<div class="tab-pane" id="material">
					<%@include file="/views/common/material.jsp"%>
				</div>
				 
				<div class="tab-pane active" id="sweater">
					 
			         <form  method="post" 
				            action="${ctx}/sweater/sweaterSampleAndCraftSubmit.do?taskId=${orderInfo.task.id}&orderId=${orderInfo.order.orderId}">		
			          	 <table class="table table-striped table-bordered table-hover detail">
								<tr>
								<td class="span2 title" rowspan="2">任务选择</td>
								<td class="span2 title"><span style="color:red ;font-weight:bold">请选择操作</span></td>
								
								</tr>
								<tr>
								<td>
								    <!-- 表示仓库里没有原料，需要去购买原料 ，需要打小样-->
			                        <c:if test="${buySweaterMaterial == true }">
								    <input type="radio" name="task_name" id="task_name"
									 value="1" required="required" /> 打小样
			                        </c:if>
									<input type="radio" name="task_name" id="task_name"
									 value="2" checked="checked" /> 制作工艺
									<input type="radio" name="task_name" id="task_name"
									 value="3" checked="checked" /> 制版打样
									<input type="radio" name="task_name" id="task_name"
									 value="3" checked="checked" /> 确认样衣
								</td>
								</tr>
								
							<tr>
								<td class="title" rowspan="3">操作信息</td>
								<td class="span2 title">完成时间</td>
								<td class="span2 title">负责人</td>
								<td class="title">上传</td>
							</tr>
							<tr>
								<td class="span2" colspan="2">
								<input class="span8" id="datepicker" type="text" name="task_finish_date" required="required"/>
								</td>
								<td>
								<input type="text" class="span12" name="person_in_charge" required="required" />
								</td>
								<td><input type="button" class="span12" name="upload" value="上传"/></td>
							</tr>
								
								<tr>
									<td class="title">备注</td>
									<td>
 										<textarea class="span12"  style="resize:vertical" name="sweaterremark"  placeholder="请输入备注" ></textarea>
									</td>
								</tr>
								
						 </table>
						 
						<table class="table table-striped table-bordered table-hover detail">
							<c:if test="${empty orderInfo.sweaterOperateRecord}">
								<tr>
									<td class="title" style="width:22%;background: red;">操作记录</td>
									<td>无</td>
								</tr>
							</c:if>
							<c:if test="${!empty orderInfo.sweaterOperateRecord}">
								<tr>
									<td class="title" rowspan="${fn:length(orderInfo.sweaterOperateRecord)+1}" style="width:22%;background: #ff0000;">操作记录</td>
									<td class="title">环节名称</td>
									<td class="title">完成时间</td>
									<td class="title">负责人</td>
									<td class="title">消息备注</td>
								</tr>
								<c:forEach var="operateRecord" items="${orderInfo.sweaterOperateRecord}">
									<tr>
										<td>${operateRecord.operateTaskName}</td>
										<td>${operateRecord.operateTime}</td>
										<td>${operateRecord.operatePerson}</td>
										<td>${operateRecord.operateRemark}</td>
									</tr>
								</c:forEach>
							</c:if>
						</table>
			          <!-- 表示仓库里有原料，不用去购买原料，直接到工艺制作 
			          <c:if test="${buySweaterMaterial == false }"></c:if>
			          -->  
			          
			          <div class="action" style="float:right">
						<input id="save_this_send" class="btn btn-primary"
                               type="submit" value="保存记录" style="background-color:#1E90FF" />	
						<a href="${ctx}/sweater/sweaterSampleAndCraftSubmit.do?orderId=${orderInfo.order.orderId}&taskId=${orderInfo.task.id}&isFinal=true"
							  onclick="return confirmSendSampleSubmit();"
							  class="btn btn-primary">完成毛衣样衣确认和工艺制作</a>
							
						<!-- 隐藏标签，判断是否是最终的发货 -->
						<input id="is_final" type="hidden" name="isFinal" value="false" />
					</div>
		            </form>		
				</div>
			</div>
		</div>

		<button class="btn btn-primary" onclick="history.back();">返回</button>
	</div>


	<div class="footer">
		<div class="footer-left">
			<span>&copy; 2014. 江苏南通智造链有限公司.</span>
		</div>
	</div>

</div>
</div>

<%@include file="/common/js_file.jsp"%>
<%@include file="/common/js_form_file.jsp"%>
<link rel="stylesheet" href="${ctx}/css/fmc/table.css">
<link rel="stylesheet" href="${ctx}/css/order/add_order.css">
<script type="text/javascript" src="${ctx}/js/fmc/table.js"></script>
<link rel="stylesheet" href="${ctx}/css/fmc/detail.css">
<link rel="stylesheet" href="${ctx}/views/buy/buy.css">
<script type="text/javascript" src="${ctx}/views/buy/cost.js"></script>
<script type="text/javascript" src="${ctx}/js/order/add_order.js"></script>
<script type="text/javascript" src="${ctx }/js/custom.js"></script>
<%@include file="/common/footer.jsp"%>