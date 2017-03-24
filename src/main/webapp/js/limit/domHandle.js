/** 
 * 操作DOM基础功能工具集
 * @author jh
 * 
 * 基于bootstrap3
 * 
 * 所有function内DOM定位数据默认均为DOM id
 */

//jquery 延迟加载
$(document).ready(function() {
	
	/** 
	 * 将指定元素下的所有复选框选中状态与本复选框状态同步
	 * 
	 * data DOM元素id
	 * eg:	<input type="checkbox" data="" class="setAllDataCheckBoxState">
	 * 
	 * */
	$(".setAllDataCheckBoxState").click(function(){
		var dom = $(this).attr("data");
		if($(this).is(':checked')){//全选
			$("#" + dom + " input[type='checkbox']").attr("checked",true);
		}else{
			$("#" + dom + " input[type='checkbox']").attr("checked",false);
		}
	});
	
	/**
	 * 结束时间大于开始时间处理
	 * 弹出提示窗口
	 * 
	 * 结束input class : .endTime
	 * 开始input class : .startTime
	 *
	 * */
	$(".endTime").change(function(){
		var startTime=$(".startTime").val();
		var endTime=$(this).val();
		
		if(endTime<startTime){
			//bootstrap弹窗
			if($(".timeAdd").html != ''){
				$(".timeAdd").remove();
			}
			var html = '<div class="timeAdd">';
			html += '<div class="modal fade endTime" tabindex="-1" role="dialog" aria-labelledby="time">';
			html += '<div class="modal-dialog modal-sm" role="document">';
			html += '<div class="modal-content">';
			html += '<div class="modal-body">';
			html += '<p align="center"><strong>结束时间必须大于开始时间</strong></p>';
			html += '<br/>';
			html += '</div>';
			html += '<div class="modal-footer">';
			html += '<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>';
			html += '</div>';
			html += '</div>';
			html += '</div>';
			html += '</div>';
			html += '</div>';
			
			$("body").append(html);
			$('.endTime').modal({
			  keyboard: false,
			  backdrop: false
			});
			$("input[type='submit']").attr("disabled","disabled");
			return;
		}else{
			$("input[type='submit']").removeAttr("disabled");
			return;
		}
	});

});