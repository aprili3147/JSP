package dao;

import java.util.ArrayList;
import dto.Book; 

public class BookRepository {


    // 책 목록을 저장할 ArrayList
    private ArrayList<Book> listOfBooks = new ArrayList<Book>();

    // 외부에서 직접 인스턴스 생성을 막기 위한 private 생성자
    public BookRepository() {
        listOfBooks = new ArrayList<Book>(); // 생성자에서 리스트 초기화

        Book book1 = new Book("ISBN1234", "C# 프로그래밍", 27000);
        book1.setAuthor("우재남");
        book1.setDescription("C#을 처음 접하는 독자를 대상으로 일대일 수업처럼 자세히 설명한 책이다.");
        book1.setPublisher("한빛아카데미");
        book1.setCategory("IT모바일");
        book1.setUnitsInStock(1000);
        book1.setReleaseDate("2022/10/06");

        Book book2 = new Book("ISBN1235", "자바 마스터", 30000);
        book2.setAuthor("송미영");
        book2.setDescription("자바를 처음 접하는 독자를 대상으로 일대일 수업처럼 자세히 설명한 책이다.");
        book2.setPublisher("한빛아카데미");
        book2.setCategory("IT모바일");
        book2.setUnitsInStock(1000);
        book2.setReleaseDate("2022/01/01");

        Book book3 = new Book("ISBN1236", "파이썬 프로그래밍", 30000);
        book3.setAuthor("최성철");
        book3.setDescription("파이썬을 처음 접하는 독자를 대상으로 일대일 수업처럼 자세히 설명한 책이다.");
        book3.setPublisher("한빛아카데미");
        book3.setCategory("IT모바일");
        book3.setUnitsInStock(1000);
        book3.setReleaseDate("2023/01/01");

        listOfBooks.add(book1);
        listOfBooks.add(book2);
        listOfBooks.add(book3);
    }


    // 모든 책 목록을 반환하는 메소드 (생성자 밖으로 이동)
    public ArrayList<Book> getAllBooks() {
        return listOfBooks; // 오타 수정: ListOfBooks -> listOfBooks
    }

}