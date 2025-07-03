# JSP `request` / `response` 내장 객체 및 폼 처리 핵심 정리

---

## 📌 `request` 내장 객체란?

- 클라이언트(웹 브라우저)가 서버에 보낸 **요청(Request)** 관련 정보를 담고 있는 **JSP의 내장 객체**입니다.

---

## ✅ 요청 파라미터 (Request Parameters)

### 🔹 정의
- 클라이언트가 서버로 데이터를 보낼 때 사용하는 **이름(name) - 값(value)** 쌍입니다.

### 🔹 전달 방식
- **GET 방식**: URL의 쿼리 스트링(`?name=value`)에 포함
- **POST 방식**: HTTP 요청 본문(body)에 포함되어 전달

### 🔹 구조: `Map<Key, Value>` 형태
- **Key**: `<input>` 태그의 `name` 속성
- **Value**: 사용자가 입력한 값

## ✅ 예시 코드

```jsp
<%= request.getParameter("username") %>
<%-- 출력: 홍길동 --%>
```

---

## 📩 HTTP 요청 헤더

웹 브라우저가 서버에 요청을 보낼 때 포함하는 부가 정보  
예: 브라우저 종류, 언어, 쿠키, 인증 토큰 등

---

## 📌 `response` 내장 객체

서버가 클라이언트에게 **응답(Response)**을 보낼 때 사용하는 객체  
- HTTP 상태 코드, 헤더 설정, 리다이렉트 등에 활용

```jsp
<% response.sendRedirect("http://www.google.com"); %>
```

---

## ✅ MIME 타입 & 보안

### 🔸 MIME 타입이란?

클라이언트에게 전송되는 **데이터 형식(type)** 정보를 알려주는 값  
예: `text/html`, `image/jpeg`, `application/json`

### 🔸 MIME 스니핑 방지

```jsp
<% response.setHeader("X-Content-Type-Options", "nosniff"); %>
```

> 브라우저가 MIME 타입을 추측하지 않도록 설정 → 보안 강화

---

## 🛠 JSP 출력 메서드 정리

| 메서드         | 설명                                        |
|----------------|---------------------------------------------|
| `print(data)`  | 데이터를 출력 (줄바꿈 없음)                |
| `println(data)`| 출력 후 줄바꿈 추가                        |
| `newLine()`    | 줄바꿈 문자만 추가                          |
| `clear()`      | 아직 전송되지 않은 출력 내용을 모두 삭제  |
| `flush()`      | 버퍼 내용을 브라우저로 즉시 전송           |

---

## 📝 HTML `form` 태그

### 📌 역할

사용자로부터 입력을 수집하고 서버로 전송하는 입력 양식 컨테이너

### 🔸 주요 입력 요소

- `<input>`: 텍스트, 비밀번호, 체크박스 등 한 줄 입력  
- `<select>`: 드롭다운 선택  
- `<textarea>`: 여러 줄 텍스트 입력

---

## ✅ 폼 데이터 처리 흐름

1. 사용자가 HTML `form`에 입력
2. 브라우저가 서버에 전송 (GET 또는 POST)
3. 서버가 `request.getParameter("name")` 등으로 값 추출
4. 유효성 검사 및 비즈니스 로직 처리

---

## 🧪 유효성 검사란?

입력값이 형식과 규칙에 맞는지 검사하는 것

### 🎯 목적

- ✅ 데이터 무결성 보장  
- ✅ 사용자 경험 향상  
- ✅ 보안 강화 (예: XSS, SQL Injection 방지)

---

## ☕ Jakarta EE (자카르타 EE)

Java 웹 애플리케이션 개발을 위한 **표준 플랫폼 및 사양 집합**  
대표 기술:
- Servlet
- JSP
- JPA
- JSF

