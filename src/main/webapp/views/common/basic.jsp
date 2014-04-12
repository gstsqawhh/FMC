<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<table class="table table-striped table-bordered">
	<tr>
		<td>业务信息</td>
		<td>业务编号</td>
		<td>${orderInfo.order.orderId}</td>
		<td>接单时间</td>
		<td></td>
		<td>接单业务员</td>
		<td>${orderInfo.employee.employeeName}</td>
	</tr>
	<tr>
		<td rowspan="3">客户信息</td>
		<td>客户编号</td>
		<td>姓名</td>
		<td>公司</td>
		<td>传真</td>
		<td>手机1</td>
		<td>手机2</td>
	</tr>
	<tr>
		<td>${orderInfo.order.customerId }</td>
		<td>${orderInfo.order.customerName }</td>
		<td>${orderInfo.order.customerCompany }</td>
		<td>${orderInfo.order.customerCompanyFax}</td>
		<td>${orderInfo.order.customerPhone1}</td>
		<td>${orderInfo.order.customerPhone2}</td>
	</tr>
	<tr>
		<td>公司地址</td>
		<td colspan="5">${orderInfo.order.customerCompanyAddress}</td>
	</tr>
	<tr>
		<td rowspan="6">款式信息</td>
		<td><label>款式名称</label></td>
		<td colspan="2">款式性别</td>
		<td colspan="2">款式季节</td>
		<td>订单来源</td>
	</tr>
	<tr>
		<td>${orderInfo.order.styleName }</td>
		<td colspan="2">${orderInfo.order.styleSex }</td>
		<td colspan="2">${orderInfo.order.styleSeason}</td>
		<td>${orderInfo.order.orderSource }</td>
	</tr>
	<tr>
		<td>面料类型</td>
		<td colspan="5">${orderInfo.order.fabricType}</td>
	</tr>
	<tr>
		<td>特殊工艺</td>
		<td colspan="5">${orderInfo.order.specialProcess}</td>
	</tr>
	<tr>
		<td>其他说明</td>
		<td colspan="5">${orderInfo.order.otherRequirements}</td>
	</tr>
	<tr>
		<td>参考链接</td>
		<td colspan="5"></td>
	</tr>
</table>