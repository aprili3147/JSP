디렉티브 태그
jsp<%@ page language="java" contentType="text/html; charset=UTF-8" 
         pageEncoding="UTF-8" session="true" errorPage="error.jsp" %>

<%@ include file="header.jsp" %>

<%@ page import="java.io.*" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

디렉티브 태그 종류

<%@ page ... %>: JSP 페이지 정보 설정
<%@ include ... %>: 다른 문서 포함 (번역 시점)
<%@ taglib ... %>: 태그 라이브러리 설정

<%@ page … %> - JSP 페이지에 대한 정보를 설정

<%@ include … %> - JSP 페이지의 특정 영역에 다른 문서를 포함

<%@ taglib … %> - JSP 페이지에서 사용할 태그 라이브러리 설정

errorPage 만들려면

패키지 생성 -> 파일 생성

<%@ page errorpage = “MyErrorPage.jsp” %>

현재 페이지 오류 페이지로 설정

<%@ page isErrorPage = “true” %>

contentType
<%@ page contentType = “text/html” %>

import - 제일 위에 선언
<%@ page import = “java.io.*” %>

session 
<%@ page session = “true” %>

include 디렉티브 태그
<%@ include file = “파일명” %>

디버깅 팁

Ctrl + Shift + /: 자동 주석 처리
에러 페이지 설정: <%@ page errorPage="error.jsp" %>
에러 페이지 생성: <%@ page isErrorPage="true" %>
