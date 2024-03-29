package sea.water; // 定义一个包名为sea.water
import java.util.ArrayList; // 导入java.util.ArrayList类
import java.util.Random; // 导入java.util.Random类
public class Memory { // 定义一个公共类名为Memory
	static ArrayList<String> list = new ArrayList<String>(); // 定义一个静态的ArrayList对象，存储字符串类型的数据，赋给一个变量名为list
	static { // 定义一个静态代码块，在类加载时执行一次
		list.add("☆"); // 向list中添加一个字符串"☆"
		list.add("○"); // 向list中添加一个字符串"○"
		list.add("△"); // 向list中添加一个字符串"△"
		list.add("□"); // 向list中添加一个字符串"□"
		list.add("◇"); // 向list中添加一个字符串"◇"
	}
	int grade = 5; // 定义一个整数类型的变量名为grade，初始值为5，表示难度等级
	String testString; // 定义一个字符串类型的变量名为testString，表示测试字符串
	boolean isGivenTestString = false; // 定义一个布尔类型的变量名为isGivenTestString，初始值为false，表示是否已经生成了测试字符串
	public void setGrade(int n) { // 定义一个公共的无返回值的方法名为setGrade，接受一个整数类型的参数名为n，用于设置难度等级
		grade = n; // 将n的值赋给grade变量
	}
	public int getGrade() { // 定义一个公共的返回整数类型的方法名为getGrade，用于获取难度等级
		return grade; // 返回grade变量的值
	}
	public void giveTestString() { // 定义一个公共的无返回值的方法名为giveTestString，用于生成测试字符串
		StringBuffer buffer = new StringBuffer(); // 创建一个StringBuffer对象，赋给一个变量名为buffer，用于拼接字符串
		Random random = new Random(); // 创建一个Random对象，赋给一个变量名为random，用于生成随机数
		for(int i = 0;i<grade;i++) { // 使用for循环，从0开始到grade-1结束，每次循环i加1
			int index = random.nextInt(list.size()); // 使用random对象的nextInt方法，传入list的大小作为参数，生成一个随机整数，并赋给一个变量名为index，表示在list中随机选取的索引位置
			String str = list.get(index); // 使用list对象的get方法，传入index作为参数，获取list中对应位置的字符串，并赋给一个变量名为str
			buffer.append(str); // 使用buffer对象的append方法，传入str作为参数，将str拼接到buffer后面
		}
		testString = new String(buffer); // 使用buffer对象创建一个新的String对象，并赋给testString变量
	}
	public void setIsGivenTestString(boolean b) { // 定义一个公共的无返回值的方法名为setIsGivenTestString，接受一个布尔类型的参数名为b，用于设置是否已经生成了测试字符串
		isGivenTestString = b; // 将b的值赋给isGivenTestString变量
	}
	public boolean getIsGivenTestString() { // 定义一个公共的返回布尔类型的方法名为getIsGivenTestString，用于获取是否已经生成了测试字符串
		return isGivenTestString; // 返回isGivenTestString变量的值
	}
	public String getTestString() { // 定义一个公共的返回字符串类型的方法名为getTestString，用于获取测试字符串
		return testString; // 返回testString变量的值
	}
}
