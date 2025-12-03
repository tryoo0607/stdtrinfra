# stdtrinfra
- 개인 용도로 구축한 kubernetes 기반 인프라 설정 관리용 Repository
- 민감 정보는 private repository인 stdtrinfra-secrets에서 별도 관리


<br/>
<br/>

## 환경 정보
- window 기반 pc에서 hyper-v를 이용하여 vm을 생성, 해당 vm들로 클러스터를 구축함

<br/>

### Spec
- master node
  - Ubuntu 20.04
  - vCPU 4 core / Memory 4GB

- worker node
  - Ubuntu 20.04
  - vCPU 4 core / Memory 16GB

- kubernetes
  - Client Version: v1.32.1
  - Kustomize Version: v5.5.0
  - Server Version: v1.32.1 (master / worker 동일)


<br/>
<br/>


## 구성
### VM
```
            [Internet]
                │
          [공유기 / 모뎀]
                │ (LAN)
        ┌─────────────────┐
        │  Windows PC (Mini PC) │  ← 호스트 OS (Windows, Hyper-V 설치)
        └─────────────────┘
                │
        [Hyper-V 가상 스위치]
                │
    ┌──────────┼───────────┬───────────┐
    │          │           │           │
┌────────┐ ┌────────┐ ┌────────┐ ┌────────┐
│ k8s-m1 │ │ k8s-w1 │ │ k8s-w2 │ │ k8s-w3 │
│ Master │ │ Worker │ │ Worker │ │ Worker │
└────────┘ └────────┘ └────────┘ └────────┘
   (VM)        (VM)        (VM)        (VM)
```

<br/>
<br/>


### Kubernetes
```
                    External Services
                           ↑
                      Ingress(L7)
                           ↑
                      K8s Cluster
             ┌─────────┬──────────┐
             │         │          │
     Worker Nodes  Worker Nodes  Worker Nodes
        │ (자동 mount via CSI)
        ▼
      NAS (앱 데이터)

        
Master Node 
 │ (수동 mount for backup)
 ▼
NAS (kube 설정 백업)

```


<br/>
<br/>