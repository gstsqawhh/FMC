// JavaScript Document

(function($) {
	
	$(function(){
		//$.log("添加事件");
		$("table.fabric_table a").click(function(){
			var colName = ["fabric_name","fabric_amount"];
			table_addrow_onclick("fabric_table",colName,2);
		});

		$("table.accessory_table a").click(function(){
			var colName = ["accessory_name","accessory_query"];
			table_addrow_onclick("accessory_table",colName,2);
		});
		
		$("table.produce_table a").click(function(){
			var colName = ["produce_color","produce_xs","produce_s","produce_m","produce_l","produce_xl","produce_xxl"];
			table_addrow_onclick("produce_table",colName,7);
		});
		
		$("table.version_table a").click(function(){
			var colName = ["version_size","version_centerBackLength","version_bust","version_waistLine","version_shoulder",
			               "version_buttock","version_hem","version_trousers","version_skirt","version_sleeves"];
			table_addrow_onclick("version_table",colName,10);
		});
		
		$("#sample_clothes_picture_button").click(function(){
			$("input[name='sample_clothes_picture']").click();
		});
		
		
		$("#reference_picture_button").click(function(){
			$("input[name='reference_picture']").click();
		});
		
		


		init();
		
		
	});


	function table_addrow_onclick(table_name,col_name,col_sum){
//		    //检查第一列是否为空
//			var col1=$("table."+table_name+" tr.addrow input").eq(0).val();
//			if(col1==""){
//				alert("不能为空");
//				return;
//			}
//			
//			//检查第二列是否为空
//			var col2=$("table."+table_name+" tr.addrow input").eq(1).val();
//			if(col2==""){
//				alert("不能为空");
//				return;
//			}
//			
			var content = new Array();
			for(var i=0;i<col_sum;i++){
				var col=$("table."+table_name+" tr.addrow input").eq(i).val();
				content[i] = col;
				if(col==""){
					alert("不能为空");
					return;
				}
			}
			//清空第一二列
//			$("table."+table_name+" tr.addrow input").eq(0).val("");
//			$("table."+table_name+" tr.addrow input").eq(1).val("");

			//添加行
//			var item="<td class='span12 "+col1_name+"'>"+col1+"</td>";
//			item+="<td class='span12 "+col2_name+"'>"+col2+"</td>";

			var item = "";
			for(var j=0;j<col_sum;j++){
				$("table."+table_name+" tr.addrow input").eq(j).val("");
				item+="<td class='span12 "+col_name[j]+"'>"+content[j]+"</td>";
			}
			item+="<td class='span12'><a onclick=\"deleteRow(this,'"+table_name+"')\">删除</a></td>";
			item="<tr>"+item+"</tr>";
			$("table."+table_name+" tr.addrow").after(item);
			
			
	}


	
})(jQuery);

function deleteRow(a,table){
	alert($(a).parents('.'+table+' tr').length);
	$(a).parents('.'+table+' tr').remove();
}

function getTdString(col){
	var tdString="";
	var i=0;
	for(;i<$("td."+col).length-1;i++){
		tdString+=$("td."+col).eq(i).text()+",";
	}
	tdString+=$("td."+col).eq(i).text();
	return tdString;
}


function verify(){
	//alert(getTdString("fabric_name"));
	//alert(getTdString("fabric_amount"));
	//alert(getTdString("accessory_name"));
	//alert(getTdString("accessory_query"));
	//$("#fabric_name").val(getTdString("fabric_name"));
	//$("#fabric_amount").val(getTdString("fabric_amount"));
	//$("#accessory_name").val(getTdString("accessory_name"));
	//$("#accessory_query").val(getTdString("accessory_query"));
	//$("#produce_color").val(getTdString("produce_color"));
	//$("#produce_xs").val(getTdString("produce_xs"));
	//$("#produce_s").val(getTdString("produce_s"));
	//$("#produce_m").val(getTdString("produce_m"));
	//$("#produce_l").val(getTdString("produce_l"));
	//$("#produce_xl").val(getTdString("produce_xl"));
	//$("#produce_xxl").val(getTdString("produce_xxl"));
	//$("#version_size").val(getTdString("version_size"));
	//$("#version_centerBackLength").val(getTdString("version_centerBackLength"));
	//$("#version_bust").val(getTdString("version_bust"));
	//$("#version_waistLine").val(getTdString("version_waistLine"));
	//$("#version_shoulder").val(getTdString("version_shoulder"));
	//$("#version_buttock").val(getTdString("version_buttock"));
	//$("#version_hem").val(getTdString("version_hem"));
	//$("#version_trousers").val(getTdString("version_trousers"));
	//$("#version_skirt").val(getTdString("version_skirt"));
	//$("#version_sleeves").val(getTdString("version_sleeves"));
	
/*	var employee_id=jQuery("select[name='employee_id']").val();
	var order_source=jQuery("input[name='order_source']").val();
	var customer_id=jQuery("select[name='customer_id']").val();
	var style_name=jQuery("input[name='style_name']").val();
	var ask_amount=jQuery("input[name='ask_amount']").val();
	var ask_deliver_date=jQuery("input[name='ask_deliver_date']").val();
	var ask_produce_period=jQuery("input[name='ask_produce_period']").val();
	var hint="employee_id:"+employee_id+"\n";
	hint+="order_source:"+order_source+"\n";
	hint+="customer_id:"+customer_id+"\n";
	hint+="style_name:"+style_name+"\n";
	hint+="ask_amount:"+ask_amount+"\n";
	hint+="ask_deliver_date:"+ask_deliver_date+"\n";
	hint+="ask_produce_period:"+ask_produce_period+"\n";
	alert(hint);*/

	
	return true;
}

function init(){
	$("#fabric_name").val("name1,name2,name3");
	$("#fabric_amount").val("11,12,13");
	$("#accessory_name").val("name1,name2,name3");
	$("#accessory_query").val("name1,name2,name3");
	
	
	
	
	$("input[name='tear_per_meter']").val("1");
	$("input[name='cost_per_meter']").val("2");
	$("input[name='fabric_price']").val("3");
	
	$("input[name='tear_per_piece']").val("4");
	$("input[name='cost_per_piece']").val("5");
	$("input[name='accessory_price']").val("6");
	
	
	
	
	$("input[name='style_name']").val("杀马特3000");
	$("input[name='order_source']").val("杀马特3000");
	$("input[name='ask_amount']").val("20");
	$("input[name='ask_produce_period']").val("10");
	$("input[name='ask_deliver_date']").val("2012-12-12");
	
	
	$("input[name='in_post_sample_clothes_time']").val("2012-12-12");
	$("input[name='in_post_sample_clothes_type']").val("顺丰");
	$("input[name='in_post_sample_clothes_number']").val("435435345435345");
	
	
	$("input[name='sample_clothes_time']").val("2012-12-12");
	$("input[name='sample_clothes_type']").val("申通");
	$("input[name='sample_clothes_number']").val("657567567567567567");
	$("input[name='sample_clothes_name']").val("黑撒旦躬");
	$("input[name='sample_clothes_phone']").val("1599546546");
	$("input[name='sample_clothes_address']").val("江苏南京");
	$("input[name='sample_clothes_remark']").val("ggggggggggggggggggg");
}