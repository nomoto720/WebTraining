import java.util.*;
public class Test{
	public static void main(String[] args){
		Scanner sc=new Scanner(System.in);
		System.out.println("Q1,リクエストスコープにstrを保存せよ");
		String str="";
		String ans="request.setAttribute(\"str\",str)";
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println("");
		ans="RequestDispatcher rd=request.getRequestDispatcher(\"Sample\")";
		String ans2="rd.forward(request,response)";
		System.out.println("Q2,Sampleへフォワードせよ");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("一行目正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		while(true){
			str=sc.nextLine();
			if(ans2.equals(str)){
				System.out.println("二行目正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		
		System.out.println("");

		ans="HttpSession session=request.getSession()";
		System.out.println("Q3.セッションスコープを取得せよ");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println("");

		ans="session.setAttribute(\"str\",str)";
		System.out.println("Q4,strデータをセッションスコープに保存せよ");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println("");
		ans="ServletContext application=getServletContext()";
		System.out.println("Q5,applicationスコープを取得");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println("");
		ans="application.setAttribute(\"str\",str)";
		System.out.println("Q6,applicationスコープでstrを保持せよ");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println("");
		ans="String str=(String)request.getAttribute(\"str\")";
		System.out.println("Q7,リクエストスコープのstrデータを取得し文字列strに代入せよ");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println("");
		ans="HttpSession session=request.getSession()";
		System.out.println("Q8,セッションスコープstrのデータを取得し文字列strに代入せよ");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("一行目正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		ans="String str=(String)session.getAttribute(\"str\")";
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("二行目正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println("");
		ans="ServletContext application=getServletContext()";
		System.out.println("Q9,applicationスコープでstrを取得し文字列strに代入せよ");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("一行目正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		ans="String str=(String)application.getAttribute(\"str\")";
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("二行目正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println("");
		ans="session.removeAttribute(\"str\")";
		System.out.println("Q10,sessionからstrデータを削除せよ");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println("");
		ans="session.invalidate()";
		System.out.println("Q11,sessionを破棄せよ");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println("");
		ans="response.setContextType(\"text/html; charset=UTF-8\")";
		System.out.println("Q12,サーブレット でhtmlで出力せよ。文字コードはutf-8");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("1行目正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		ans="PrintWriter out=response.getWriter()";
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("2行目正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println("");
		ans="<%@ page contextType=\"text/html; charset=UTF-8\" %>";
		System.out.println("Q13,jspの一番上の行の設定をかけ");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println("");
		ans="<form action=\"/example/Lesson\" method=\"post\">";
		System.out.println("Q14,exampleフォルダのLessonサーブレットにポストするフォームをかけ");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println("");
		ans="request.setCharacterEncoding(\"UTF-8\")";
		System.out.println("Q15,サーブレット のリクエストパラメータの文字コードをutf-8にせよ");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println("");
		ans="String name=request.getParameter(\"name\")";
		System.out.println("Q16,formから送られてきた文字列nameを文字列nameに代入せよ");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println("");
		ans="<input type=\"hidden\" name=\"name\" value=\"str\">";
		System.out.println("Q17,名前がnameで値がstrをjspフォームから非表示で送れるinputを作れ");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println("");
		ans="public class Mutter implements Serializable{}";
		System.out.println("Q18,MutterのJavaBeansを作成せよ");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println("");
		ans="FileInputStream fis=new FileInputStream(\"test.txt\");";
		System.out.println("Q19,test.txtファイルの読み込みをせよ");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("1行目正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		ans="InputStreamReader isr=new InputStreamReader(fis,\"UTF-8\");";
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("1行目正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		ans="BufferedReader br=new BufferedReader(isr);";
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("1行目正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println("");
		ans="private Connection db;";
		System.out.println("Q20,DAOのフィールドにデータベースに接続するinstanceを作れ");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println("");
		ans="private PreparedStatement ps;";
		System.out.println("Q21,DAOのフィールドにステートメント準備をするinstanceを作れ");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println("");
		ans="private ResultSet rs;";
		System.out.println("Q22,DAOのフィールドに結果をセットするinstanceを作れ");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println();
		ans="ps=db.prepareStatement(\"SELECT * FROM word WHERE title LIKE ?\");";
		System.out.println("Q23,Mysplのwordテーブルのtitleから文字列strと一致するものを全て取得し文字列strに代入しlistにインスタンスを代入せよ");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("1行目正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		ans="ps.setString(1,str);";
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("2行目正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		ans="rs=ps.executeQuery();";
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("3行目正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		ans="while(rs.next()){String str=rs.getString(\"str\");list.add(str);}";
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("4行目正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println();
		ans="ps=db.prepareStatement(\"INSERT INTO persons(name,age) VALUES(?,?)\");";
		System.out.println("Q24,MySQLのpersonsテーブルにpersonからnameとageを作成せよ。");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("1行目正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		ans="ps.setString(1,person.getName());";
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("2行目正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		ans="ps.setInt(2,person.getAge());";
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("3行目正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		ans="ps.executeUpdate();";
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("4行目正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println("");
		ans="ps=db.prepareStatement(\"UPDATE persons SET name=?,age=? WHERE id=?\");";
		System.out.println("Q25,personからnameとageとidを取得しpresonsテーブルをアップデートせよ");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("1行目正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		ans="ps.setString(1,person.getName());";
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("2行目正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		ans="ps.setInt(2,person.getAge());";
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("3行目正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		ans="ps.setInt(3,person.getId());";
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("4行目正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		ans="ps.executeUpdate();";
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("5行目正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println();
		ans="ps=db.prepareStatement(\"DELETE FROM persons WHERE id=?\");";
		System.out.println("Q26,personsテーブルからidで取得した列を削除せよ");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("1行目正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		ans="ps.setInt(1,id);";
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("2行目正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		ans="ps.executeUpdate();";
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("3行目正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println("");
		ans="<%@ page import=\"model.Human\" %>";
		System.out.println("Q27,jspでmodel.Humanをインポートせよ");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println("");
		ans="";
		System.out.println("Q28,");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println("");
		ans="";
		System.out.println("Q29,");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println("");
		ans="";
		System.out.println("Q30,");
		while(true){
			str=sc.nextLine();
			if(ans.equals(str)){
				System.out.println("正解");
				break;
			}else{
				System.out.println("不正解");
			}
		}
		System.out.println("");
	}
}
