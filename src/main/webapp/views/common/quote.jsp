<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<table class="table table-striped table-bordered detail">
	<tr>
		<td rowspan="${fn:length(orderInfo.fabrics)+1}">面料报价</td>
		<td>面料名</td>
		<td>单件米耗</td>
		<td>价格</td>
		<td>单件成本</td>
	</tr>

	<c:forEach var="fabric" items="${orderInfo.fabricCosts}">
		<tr>
			<td>${fabric.fabricName}</td>
			<td>${fabric.tearPerMeter}</td>
			<td>${fabric.price}</td>
			<td>${fabric.costPerMeter}</td>
		</tr>
	</c:forEach>
	<tr>
		<td rowspan="${fn:length(orderInfo.accessorys)+1}">辅料报价</td>
		<td>辅料名</td>
		<td>单件耗数</td>
		<td>价格</td>
		<td>单件成本</td>
	</tr>
	<c:forEach var="accessory" items="${orderInfo.accessoryCosts}">
		<tr>
			<td>${accessory.accessoryName}</td>
			<td>${accessory.tearPerMeter}</td>
			<td>${accessory.price}</td>
			<td>${accessory.costPerMeter}</td>
		</tr>
	</c:forEach>
	<tr>
		<td>面辅总计</td>
		<td>面料总计</td>
		<td>${orderInfo.quote.fabricCost}</td>
		<td>辅料总计</td>
		<td>${orderInfo.quote.accessoryCost}</td>
	</tr>
	<tr>
		<td rowspan="4">其他成本</td>
		<td>裁剪费用</td>
		<td>管理费用</td>
		<td>缝制费用</td>
		<td>整烫费用</td>
	</tr>

	<tr>
		<td>${orderInfo.quote.cutCost}</td>
		<td>${orderInfo.quote.manageCost}</td>
		<td>${orderInfo.quote.swingCost}</td>
		<td>${orderInfo.quote.ironingCost}</td>
	</tr>
	<tr>
		<td>锁订费用</td>
		<td>包装费用</td>
		<td>其他费用</td>
		<td>设计费用</td>
	</tr>
	<tr>
		<td>${orderInfo.quote.nailCost}</td>
		<td>${orderInfo.quote.packageCost}</td>
		<td>${orderInfo.quote.otherCost}</td>
		<td>${orderInfo.quote.designCost}</td>
	</tr>
	<tr>
		<td rowspan="2">费用核算</td>
		<td>成本总计</td>
		<td>生产报价</td>
		<td>单件利润</td>
		<td>客户报价</td>
	</tr>
	<tr>
		<td>${orderInfo.quote.singleCost}</td>
		<td>${orderInfo.quote.innerPrice}</td>
		<td>${orderInfo.quote.profitPerPiece}</td>
		<td>${orderInfo.quote.outerPrice}</td>
	</tr>

</table>