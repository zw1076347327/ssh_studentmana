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
		<c:if test="${user.role=='管理员' }">
			<div>
				<span>管理员管理</span> <a href="admin_list">管理员管理</a> <a
					href="admin_toadd">管理员添加</a>
			</div>

			<div class="collapsed">
				<span>学生管理</span> <a href="stu_list.action?currentPage=1">学生管理</a><a
					href="stu/stuadd.jsp">学生添加</a>
			</div>
		</c:if>
		<div class="collapsed">
			<span>专业管理</span> 
				<a href="speciality/specialitylist.jsp">专业管理</a>				
			<c:if test="${user.role=='管理员' }">
				<a href="speciality/specialityadd.jsp">专业添加</a>
			</c:if>	
		</div>

		<div class="collapsed">
			<span>成绩管理</span>
			<c:if test="${user.role=='管理员' }">
				
				<a href="report/reportalist.jsp">成绩管理</a>
				<a href="report/reportadd">成绩添加</a>
			</c:if>
			<c:if test="${user.role=='学生' }">
			    <a href="report/reportlistmy.jsp">成绩查看</a>
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
