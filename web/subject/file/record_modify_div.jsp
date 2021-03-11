<%@page contentType="text/html; charset=UTF-8"%>
<div id="record_modify_div" aria-hidden="true" style="position:absolute;display:none; margin:auto;z-index:9999;background-color:#FFF;">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
		<h4 class="modal-title">
			修改待办事项记录
		</h4>
	</div>
	<div class="modal-body">
		<div class="row">
			<div class="col-md-12">
				<h4>
					请修改课程的信息
				</h4>
				<input type="hidden" id="id" name="id" value="" />
				<p>
					属于哪个项目：
					<input type="text" class="col-md-12 form-control" id="project_id" value="XXX项目">
				</p>
				<p>
					课程：
					<input type="text" class="col-md-12 form-control" id="course" value="高等数学">
				</p>
				<p>
					开设学院：
					<input type="text" class="col-md-12 form-control" id="content" value="数学学院">
				</p>
				<p>
					学分：
					<input type="text" class="col-md-12 form-control" id="credit" value="3">
				</p>
			</div>
		</div>
	</div>
	<div class="modal-footer">
		<button type="button" class="btn btn-default" data-dismiss="modal">
			取消
		</button>
		<button type="button" class="btn btn-success" data-dismiss="modal" onclick="Record.modify();">
			保存
		</button>
	</div>
</div>
<script>
	Record.showRecord();
</script>