<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="left">

	<script type="text/javascript">
		var myMenu;
		window.onload = function() {
			myMenu = new SDMenu("my_menu");
			myMenu.init();
		};
	</script>

	<div id="my_menu" class="sdmenu">
		<c:if test="${type=='管理员' }">
			<div>
				<span>管理员管理</span> <a href="user/list">管理员管理</a> <a
					href="user/useradd.jsp">管理员添加</a>
			</div>

			<div class="collapsed">
				<span>学生管理</span> <a href="stu/list">学生管理</a><a
					href="stu/stuadd.jsp">学生添加</a>
			</div>
		</c:if>
		<div class="collapsed">
			<span>课程管理</span> 
				<a href="course/list">课程管理</a>
				
			<c:if test="${type=='管理员' }"><a
				href="course/courseadd.jsp">课程添加</a>
			</c:if>	
		</div>

		<div class="collapsed">
			<span>成绩管理</span>
			<c:if test="${type=='管理员' }">
				
				<a href="report/list">成绩管理</a>
				<a href="report/toaddreport">成绩添加</a>
			</c:if>
			<c:if test="${type=='学生' }">
			    <a href="report/listmy">成绩查看</a>
			</c:if>
		</div>

	</div>

</div>
<div class="Switch"></div>
<script type="text/javascript">
	$(document).ready(function(e) {
		$(".Switch").click(function() {
			$(".left").toggle();

		});
	});
</script>
