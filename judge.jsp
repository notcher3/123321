<%@ page contentType = "text/html" %> // 设置页面的内容类型为text/html
<%@ page pageEncoding = "utf-8" %> // 设置页面的编码为utf-8
<jsp:useBean id = "memory" class= "sea.water.Memory" scope = "session" /> // 创建一个名为memory的bean，使用sea.water.Memory类，作用域为session
<html>
	<body bgcolor = "white"> // 设置背景颜色为白色
		<p style = "font-family:宋体; font-size:26; color:blue"> // 创建一个段落元素，设置字体，大小和颜色
		<%	
			memory.setIsGivenTestString(false); // 使用memory对象的setIsGivenTestString方法，将false作为参数，即标记没有生成测试字符串
			request.setCharacterEncoding("utf-8"); // 使用request对象的setCharacterEncoding方法，将"utf-8"作为参数，即设置请求的字符编码为utf-8
			int n = memory.getGrade(); // 获取memory对象的getGrade方法返回的值，并赋给一个整数变量n，表示难度等级
			StringBuffer buffer = new StringBuffer(); // 创建一个StringBuffer对象，赋给一个变量名为buffer，用于拼接字符串
			for(int i = 1;i<= n;i++){ // 使用for循环，从1开始到n结束，每次循环i加1
				buffer.append (request.getParameter("R" + i)); // 使用request对象的getParameter方法，传入"R"+i作为参数，获取请求参数R+i的值，并使用buffer对象的append方法将其拼接到buffer后面
				out.print("" + request.getParameter("R" + i)); // 使用out对象的print方法，输出请求参数R+i的值
			}
			String userAnswer = new String(buffer); // 使用buffer对象创建一个新的String对象，并赋给一个变量名为userAnswer，表示用户的答案
			String testString = memory.getTestString(); // 获取memory对象的getTestString方法返回的值，并赋给一个变量名为testString，表示测试字符串
			if(testString.equals(userAnswer)){ // 使用testString对象的equals方法，传入userAnswer作为参数，判断两个字符串是否相等，如果相等，说明用户答对了
				out.print("您的记忆不错"); // 则使用out对象的print方法，输出一句话"您的记忆不错"
			}
			else{ // 如果不相等，说明用户答错了
				out.print("您没有记住！答案是：<br>" + testString); // 则使用out对象的print方法，输出一句话"您没有记住！答案是："和换行符和testString变量的值
			}
		%>
		</p >
	</body>
</html>
