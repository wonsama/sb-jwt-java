# sb-jwt-java

spring-boot java source with jwt redis

# 인증 FLOW

- BASIC 로그인 (ID/PW)
  - DB 조회 후 유효한 사용자인지 여부 확인 (단방향 암호화 검증)
  - 인증 확인
  - DB 조회 결과 얻은 ID, 기타 정보(권한 Enum 으로 권한을 다양하게 추가 할 수 있도록 함... 컴마 컴마 ...) => JWT 생성 => REDIS 저장(만료시간 설정)
- 보안 설정
  - interceptor : 로그인, 특정 페이지를 제외한 모든 페이지는 REDIS 내 토큰 저장 여부를 확인
  - preHandler
    - 모든 요청은 헤더에 토큰이 설정 되어 있는지 확인, 있으면 특정시간(60분?) 연장처리
    - 헤더에 토큰 정보가 없는 경우 또는 유효하지 않는 경우(레디스 검증) 오류 처리 (로그인페이지 리다이렉트 등)
- 통신
  - 로그인, 특정 페이지를 제외한 모든 페이지는 header 에 토큰 정보를 설정하여 통신해야 된다

로그인 실패 시 xxxException 을 발생시키며 Advice 에서 해당 xxxException 에 맞춰 알맞은 오류 화면을 출력하도록 한다
(인증만료, 로그인오류, xxx권한없음 등)

## 참고자료

- [jessym : tutorial-combining-spring-boot-auth-methods](https://www.jessym.com/articles/combining-spring-boot-auth-methods)
- [github : tutorial-combining-spring-boot-auth-methods](https://github.com/jessym/tutorial-combining-spring-boot-auth-methods)
- [springBoot+springDataJpa+Redis+JWT realize login_ ZL](https://programmer.ink/think/springboot-springdatajpa-redis-jwt-realize-login_-zl.html)
- [spring-security-method-security](https://www.baeldung.com/spring-security-method-security)
- [spring-security-registration](https://www.baeldung.com/spring-security-registration)