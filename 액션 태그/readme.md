Java Beans 규칙

기본 생성자 필수
모든 속성은 private 접근 제한자
public Getter/Setter 메소드 제공
직렬화 지원 (Serializable 구현)
패키징 필요

Java Beans 예제
javapackage com.example.model;

import java.io.Serializable;

public class Product implements Serializable {
    
    // 1. private 속성
    private String productId;
    private String name;
    private int unitPrice;
    private String description;
    
    // 2. 기본 생성자 (필수)
    public Product() {
    }
    
    // 매개변수 생성자 (선택)
    public Product(String productId, String name, int unitPrice, String description) {
        this.productId = productId;
        this.name = name;
        this.unitPrice = unitPrice;
        this.description = description;
    }
    
    // 3. Getter/Setter 메소드
    public String getProductId() {
        return productId;
    }
    
    public void setProductId(String productId) {
        this.productId = productId;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public int getUnitPrice() {
        return unitPrice;
    }
    
    public void setUnitPrice(int unitPrice) {
        this.unitPrice = unitPrice;
    }
    
    public String getDescription() {
        return description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
}
🎯 JSP 액션 태그 활용
useBean 사용법
jsp<!-- 객체 생성 또는 참조 -->
<jsp:useBean id="product" class="com.example.Product" scope="request" />

<!-- 속성 값 설정 -->
<jsp:setProperty name="product" property="name" value="스마트폰" />
<jsp:setProperty name="product" property="unitPrice" value="500000" />

<!-- 속성 값 출력 -->
상품명: <jsp:getProperty name="product" property="name" />
가격: <jsp:getProperty name="product" property="unitPrice" />원
include 디렉티브 vs include 액션
구분include 디렉티브include 액션문법<%@ include file="..." %><jsp:include page="..." />처리 시점번역 시점 (컴파일 시)요청 시점 (실행 시)특징소스 코드가 합쳐짐실행 결과가 합쳐짐
