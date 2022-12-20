# 클래스

## 객체 및 객체지향 프로그램
- JAVA는 객체지향 프로그래밍을 지원하는 프로그램 언어.
- 객체지향 프로그램이란 객체(주어)가 동작(서술어)하는 형태로 표시하는 것.

![image](https://user-images.githubusercontent.com/120995529/208585066-3ce7188e-4b6a-435f-9ec3-d831cfa4dc0e.png)

## 객체지향 프로그램의 특징
- JAVA는 캡슐화, 상속, 다형성이란 주요한 특징이 있음.

![image](https://user-images.githubusercontent.com/120995529/208585342-80ec4560-b67b-45dc-9b57-4b0614d2b8d3.png)

## 객체와 클래스간의 관계
- 현실세계 : 설계도를 통해서 자동차, 건물, 기계 등의 객체가 생성됨.
- JAVA : 클래스는 객체의 설계도.
- 클래스에는 객체를 표현하기 위한 필드와 동작을 정의하는 메소드가 정의되어 있음.
- 클래스로부터 만들어진 객체를 해당클래스의 인스턴스라고 함.
- 하나의 클래스로부터는 여러개의 인스턴스를 만들 수 있음.

## 객체의 생성
- 객체의 생성은 new 연산자를 통해서 객체가 생성된다.
- new 연산자로 생성된 객체는 참조변수로 관리된다.

![image](https://user-images.githubusercontent.com/120995529/208585923-b14e6b74-03bb-4ffb-a5b5-cb3db293267a.png)

## 클래스의 구성멤버
- 클래스의 구성멤버는 멤버변수(필드), 생성자, 메소드로 구성됨.
- 각 구성멤버는 객체를 구체화하는데 사용함.

![image](https://user-images.githubusercontent.com/120995529/208586331-6e78eeea-aa5f-4c9a-8fae-37452131b8e2.png)

## 필드 
- 객체의 고유데이터를 의미함.
- 객체가 가져야 할 제약사항.
- 객체의 현재상태의 데이터.

## 생성자
- 생성자는 객체를 생성하는 것으로 초기값을 생성.
- 클래스명과 동일한 함수가 바로 생성자임.

### 생성자 오버로딩

![image](https://user-images.githubusercontent.com/120995529/208596548-ad122136-6896-4ef4-8ff3-06ce1af2f233.png)

## 메소드
- 메소드는 객체의 동작(기능)을 정의함.
- 메서드는 객체의 호출에 의해 동작하며, 일부는 return값을 회신하여 객체의 요구에 부응함.

![image](https://user-images.githubusercontent.com/120995529/208597355-77d1f663-ed7d-4b89-8f9a-2e4ddf9eb091.png)

### 메소드 오버로딩
- 클래스내 같은 이름의 메소드를 여러개 선언하는 것을 메소드 오버로딩이라고 함.
- 인자의 개수 및 인자의 타입의 따라 여러개 선언 가능.

![image](https://user-images.githubusercontent.com/120995529/208597061-3534bd99-675e-44c3-a487-53361744259b.png)


# final 필드 및 상수(static final)
- final은 최종의 의미를 지니는 것으로 항번 정의되면 변경이 불가한 필드를 의미함.
- static final은 불변의 의미를 지니는 상수를 의미함.

![image](https://user-images.githubusercontent.com/120995529/208599262-f439c020-0867-4a89-95b4-fdcc6366fc1c.png)

# 접근제한자
- public, protected, default, private




