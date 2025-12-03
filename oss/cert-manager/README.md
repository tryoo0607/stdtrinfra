# cert-manager
- TLS 인증서를 자동 발급·갱신해주는 Kubernetes 인증서 관리 도구
- Let's Encrypt 등과 연동하여 Ingress에 HTTPS 적용 시 주로 사용

<br/>
<br/>

## Cluster Issuer vs Issuer
- Cluster Issuer : namespace 종속되지 않은 Issuer
- Issuer : 특정 namespace에 종속되는 Issuer


<br/>
<br/>

## 적용 순서
- secret -> cluster-issuer -> certificate


<br/>