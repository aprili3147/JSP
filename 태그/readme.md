JSP 태그 종류
1. 스크립트 태그
jsp<%! // 선언문 (Declaration)
    int count = 3;
    String makeItLower(String data) {
        return data.toLowerCase();
    }
%>

<% // 스크립틀릿 (Scriptlet)
    for(int i = 1; i <= count; i++) {
        // 자바 로직 코드
    }
%>

<%= makeItLower("Hello World") %> <!-- 표현문 (Expression) -->

<%-- JSP 주석 --%>
스크립트 태그 정리

<%! ... %>: 선언문 - 변수나 메소드 정의 (전역 사용)
<% ... %>: 스크립틀릿 - 자바 로직 코드 작성
<%= ... %>: 표현문 - 결과를 문자열로 출력
<%-- ... --%>: 주석
