<%@ page contentType = "text/html" %> // 设置页面的内容类型为text/html
<%@ page pageEncoding = "utf-8" %> // 设置页面的编码为utf-8
<%@ page import = "java.util.ArrayList" %> // 导入java.util.ArrayList类
<%@ page import = "java.util.Random" %> // 导入java.util.Random类
<jsp:useBean id = "memory" class= "sea.water.Memory" scope = "session" /> // 创建一个名为memory的bean，使用sea.water.Memory类，作用域为session
<html>
<head>		
		<style>
			#tomStyle{ // 定义一个样式，用于设置字体，大小和颜色
				font-family:宋体;font-size:36;color:blue
			}
		</style>
</head>
	<body bgcolor = "#ffccff"> // 设置背景颜色为粉色
		<% String grade = request.getParameter("grade"); // 获取请求参数grade的值，并赋给一个字符串变量grade
			String testString = ""; // 定义一个空字符串变量testString
		   if(grade == null){ // 如果grade为空，说明没有选择难度等级
			   memory.setGrade(memory.getGrade()); // 则使用memory对象的setGrade方法，将其getGrade方法返回的值作为参数，即保持原来的难度等级
		   }
		   else{ // 如果grade不为空，说明选择了难度等级
			   memory.setGrade(Integer.parseInt(grade)); // 则使用memory对象的setGrade方法，将grade转换为整数后作为参数，即设置新的难度等级
		   }
		   if(memory.getIsGivenTestString() == false){ // 如果memory对象的getIsGivenTestString方法返回false，说明还没有生成测试字符串
			   memory.giveTestString(); // 则使用memory对象的giveTestString方法，生成一个测试字符串
			   testString = memory.getTestString(); // 并将其getTestString方法返回的值赋给testString变量
			   memory.setIsGivenTestString(true); // 然后使用memory对象的setIsGivenTestString方法，将true作为参数，即标记已经生成了测试字符串
		   }
		   else if(memory.getIsGivenTestString() == true){ // 如果memory对象的getIsGivenTestString方法返回true，说明已经生成了测试字符串
			   response.sendRedirect("answerTest.jsp"); // 则使用response对象的sendRedirect方法，将页面重定向到answerTest.jsp，即跳转到答题页
		   }
		%>
		<p id = "tomStyle">给5秒记住您看到的字符序列：<br> // 创建一个段落元素，使用tomStyle样式，显示提示信息和换行符
		<%= testString %> // 使用表达式脚本输出testString变量的值，即显示测试字符串
		<br>5秒后，将跳转到答题页. // 显示换行符和提示信息
		<%response.setHeader("refresh" , "5"); %> // 使用response对象的setHeader方法，设置refresh头部为5秒，即在5秒后刷新页面
		</p >
	</body>
</html>
