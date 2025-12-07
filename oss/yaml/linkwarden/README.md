# linkwarden
- 웹 북마크 및 링크 정보를 자체 서버에 저장·관리할 수 있는 오픈소스 북마크 플랫폼
- URL 메타데이터, 썸네일, 페이지 아카이빙 기능을 제공하여 링크 유실 방지

<br/>
<br/>

## 참고
### ${GENERATED_SECRET}
- 다음 명령어 실행으로 얻은 값
- `openssl rand -base64 32`

<br/>
<br/>

### ingress-auth.yaml
- 현재 keycloak 로그인 시 redirect_uri가 `/api/v1/auth`로 들어와야 하지만 `/api/auth`로 들어오고 있어 로그인 오류 발생
- 해당 문제해결 위해 ingress 이용하여 `/api/auth`를 `/api/v1/auth/`로 리다이렉트 하고 있음
- 추후 해당 문제 해결되면 삭제 가능

<br/>
<br/>