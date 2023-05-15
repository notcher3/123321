<%@ page contentType = "text/html" %> // 设置页面的内容类型为text/html
<%@ page pageEncoding = "utf-8" %> // 设置页面的编码为utf-8
<jsp:useBean id = "memory" class= "sea.water.Memory" scope = "session" /> // 创建一个名为memory的bean，使用sea.water.Memory类，作用域为session
<html>
<head>		
		<style>
			#tomStyle{ // 定义一个样式，用于设置字体，大小和颜色
				font-family:宋体;font-size:26;color:blue
			}
		</style>
</head>
	<body bgcolor = "#ffccff"> // 设置背景颜色为粉色
		<form action="judgeAnswer.jsp" id= "tomStyle" method = "post"> // 创建一个表单，提交到judgeAnswer.jsp页面，使用post方法，使用tomStyle样式
		您记住的字符序列是怎样的，请选择： // 显示提示信息
		<%
			int n = memory.getGrade(); // 获取memory对象的getGrade方法返回的值，并赋给一个整数变量n，表示难度等级
			memory.setIsGivenTestString(false); // 使用memory对象的setIsGivenTestString方法，将false作为参数，即标记没有生成测试字符串
			for(int i = 1;i<=n;i++){ // 使用for循环，从1开始到n结束，每次循环i加1
				out.print("<br>第" + i + "个字符："); // 使用out对象的print方法，输出换行符和提示信息
				out.print("<input type = radio name = R" + i + " value = '☆'/>☆" +  // 使用out对象的print方法，输出一个单选按钮，名字为R+i，值为'☆'，显示为☆
						"<input type = radio name = R" + i + " value = '○'/>○" + // 输出一个单选按钮，名字为R+i，值为'○'，显示为○
						"<input type = radio name = R" + i + " value = '△'/>△" + // 输出一个单选按钮，名字为R+i，值为'△'，显示为△
						"<input type = radio name = R" + i + " value = '□'/>□" + // 输出一个单选按钮，名字为R+i，值为'□'，显示为□
						"<input type = radio name = R" + i + " value = '◇'/>◇" ); // 输出一个单选按钮，名字为R+i，值为'◇'，显示为◇
			}
		%>
		<br><input type = "submit" name = "submit" id = "textStyle" value = "提交"/> // 输出一个换行符和一个提交按钮，名字为submit，使用textStyle样式，显示为提交
		<input type = "reset" id = "textStyle" value = "重置"/> // 输出一个重置按钮，使用textStyle样式，显示为重置
		</form>
	</body>
</html>
