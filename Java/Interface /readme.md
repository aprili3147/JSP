자바의 인터페이스
인터페이스는 일종의 설계도
특정 클래스가 어떤 기능을 반드시 구현해야 한다는 것을 정의
인터페이스 안의 메서드는 추상 메서드로 선언
public abstract void a();

implements 키워드 사용
ex)
  class a implements b {...}
implements를 했다면, a클래스는 b 인터페이스가 정의한 모든 메서드를 반드시 구현해야 한다.

다중 상속의 대안
자바는 클래스의 다중 상속을 허용X -> 그렇기에 인터페이스를 여러개 implements 할 수 있다,
ex)
  class SmartPhone implements Camera, Phone, Music {...}
이렇게 되면 SmartPhone은 카메라, 전화, 음악 기능을 모두 구현해야한다.

// 📘 Java 인터페이스 (Interface)

// 자바에서 인터페이스는 클래스가 반드시 구현해야 할 기능의 "설계도" 역할을 합니다.
// 이 예제는 인터페이스의 정의, 구현, 다형성 사용법을 보여줍니다.

// 1. 인터페이스 정의
interface Flyable {
    void fly(); // 날 수 있는 기능 (추상 메서드)
}

interface Swimmable {
    void swim(); // 헤엄칠 수 있는 기능 (추상 메서드)
}

// 2. Duck 클래스는 두 인터페이스를 모두 구현
class Duck implements Flyable, Swimmable {
    @Override
    public void fly() {
        System.out.println("오리가 날개를 퍼덕이며 날아갑니다.");
    }

    @Override
    public void swim() {
        System.out.println("오리가 물갈퀴로 헤엄칩니다.");
    }

    public void quack() {
        System.out.println("꽥꽥!");
    }
}

// 3. Airplane 클래스는 Flyable만 구현
class Airplane implements Flyable {
    @Override
    public void fly() {
        System.out.println("비행기가 엔진을 이용해 이륙합니다.");
    }
}

// 4. 실행 예제
public class InterfaceExample {
    public static void main(String[] args) {
        Duck donald = new Duck();
        donald.fly();    // 오리도 날고
        donald.swim();   // 오리는 헤엄도 치고
        donald.quack();  // 오리 고유 기능도 사용

        System.out.println("---");

        Airplane boeing = new Airplane();
        boeing.fly();    // 비행기도 납니다.
        // boeing.swim(); // ❌ 컴파일 에러: Swimmable 구현 안함

        System.out.println("---");

        // 인터페이스를 타입으로 사용 (다형성)
        Flyable flyer1 = new Duck();
        flyer1.fly();

        Flyable flyer2 = new Airplane();
        flyer2.fly();

        Swimmable swimmer = new Duck();
        swimmer.swim();
    }
}

