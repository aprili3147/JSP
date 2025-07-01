
<% … %> 사용

JSP 페이지가 서블릿 프로그램에서 서블릿 클래스로 변환할 때

<%! … %> - 선언문, 변수나 메소드 정의. 전역으로 사용

<% .. %> - 스크립틀릿, 자바 로직 코드를 작성하는 데 사용

<%= … %> - 표현문, 변수, 계산식, 메서드 호출 결과를 문자열 형태로 출력하는데 사용

<%@ page import = … %> - import

<%— —> - 주석 

＜%! int count = 3;

String makeItLower(String data) {

return data.toLowerCase();

} %>

<% 

for(int i=1; i≤count; i++){

…

} %>

<%= makeItLower(”Hello World”) %>

컴파일 되서 변역이 되기 때문에 밑에서 선언해도 사용 가능

![image.png](attachment:fd4eb675-dc24-4327-937e-d076e4291af5:image.png)

스크립틀릿 태그

서블릿 프로그램으로 변환될 때 _jspService() 메서드 내부에 배치된다.

Ctrl + Shift + / - 자동 주석 처리
