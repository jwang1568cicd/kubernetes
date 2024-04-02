# kubernetes
1. First, let us try with minikube in the local VM then AWS.
2. Here are steps need to know..
  Cloning the source code repository using the below commands-
  git clone https://github.com/onjerryaws/vprofile-project.git
  Setting up Kubernetes cluster
  Setting up Minikube - Install Minikube using Chocolatey. Use the below command:
  choco install minikube kubernetes-cli
  choco install minikube kubernetes-cli --force
*** sample of logs
  Use the below commands to start minikube:
  minikube start or
  minikube start --driver=virtualbox --no-vtx-check  (Use this command if above doesn't work)

  ***https://minikube.sigs.k8s.io/docs/start/


  581  minikube service hello-minikube
  582  minikube dashboard
  583  kubectl get deploy
  584  kubectl service hello
  585  minikube service hello-minikube
  586  minikube service hello-minikube --url
  587  kubectl get svc
  588  kubectl get deploy
  589  kubectl delete deploy hello-minikube
  590  kubectl get nodes
  591  history
  592  minikube status
  593  minikube delete
  594  history


kubctl get svc

$ kubectl get deploy
NAME             READY   UP-TO-DATE   AVAILABLE   AGE
hello-minikube   1/1     1            1           14m

CICD-Student@DESKTOP-FNUA4LH MINGW64 ~/cicdclass/vprofile-project/minikube (kubernetes-setup)
$
$ minikube service hello-minikube
W0328 11:37:00.035712   25520 main.go:291] Unable to resolve the current Docker CLI context "default": context "default": context not found: open C:\Users\CICD-Student\.docker\contexts\meta\37a8eec1ce19687d132fe29051dca629d164e2c4958ba141d5f4133a33f0688f\meta.json: The system cannot find the path specified.
|-----------|----------------|-------------|-----------------------------|
| NAMESPACE |      NAME      | TARGET PORT |             URL             |
|-----------|----------------|-------------|-----------------------------|
| default   | hello-minikube |        8080 | http://192.168.59.102:31184 |
|-----------|----------------|-------------|-----------------------------|
* Opening service default/hello-minikube in default browser...

CICD-Student@DESKTOP-FNUA4LH MINGW64 ~/cicdclass/vprofile-project/minikube (kubernetes-setup)
$ minikube service hello-minikube --url
W0328 11:38:24.210233    6984 main.go:291] Unable to resolve the current Docker CLI context "default": context "default": context not found: open C:\Users\CICD-Student\.docker\contexts\meta\37a8eec1ce19687d132fe29051dca629d164e2c4958ba141d5f4133a33f0688f\meta.json: The system cannot find the path specified.
http://192.168.59.102:31184

CICD-Student@DESKTOP-FNUA4LH MINGW64 ~/cicdclass/vprofile-project/minikube (kubernetes-setup)
$




CICD-Student@DESKTOP-FNUA4LH MINGW64 ~/cicdclass/vprofile-project/minikube (kubernetes-setup)
$
Request served by hello-minikube-7f54cff968-nf77m

HTTP/1.1 GET /

Host: 192.168.59.102:31184
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7
Accept-Encoding: gzip, deflate
Accept-Language: en-US,en;q=0.9
Connection: keep-alive
Upgrade-Insecure-Requests: 1
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36

***

kubectl create deployment hello-minikube --image=kicbase/echo-server:1.0
kubectl expose deployment hello-minikube --type=NodePort --port=8080

kubectl get services hello-minikube

CICD-Student@DESKTOP-FNUA4LH MINGW64 ~/cicdclass/vprofile-project/minikube (kubernetes-setup)
$ kubectl create deployment hello-minikube --image=kicbase/echo-server:1.0
deployment.apps/hello-minikube created

CICD-Student@DESKTOP-FNUA4LH MINGW64 ~/cicdclass/vprofile-project/minikube (kubernetes-setup)
$ kubectl expose deployment hello-minikube --type=NodePort --port=8080
service/hello-minikube exposed

CICD-Student@DESKTOP-FNUA4LH MINGW64 ~/cicdclass/vprofile-project/minikube (kubernetes-setup)
$ kubectl get services hello-minikube
NAME             TYPE       CLUSTER-IP      EXTERNAL-IP   PORT(S)          AGE
hello-minikube   NodePort   10.97.121.109   <none>        8080:31184/TCP   22s

CICD-Student@DESKTOP-FNUA4LH MINGW64 ~/cicdclass/vprofile-project/minikube (kubernetes-setup)
$

CICD-Student@DESKTOP-FNUA4LH MINGW64 ~/cicdclass/vprofile-project/minikube (kubernetes-setup)
$ minikube service hello-minikube
W0328 11:21:50.256546   11680 main.go:291] Unable to resolve the current Docker CLI context "default": context "default": context not found: open C:\Users\CICD-Student\.docker\contexts\meta\37a8eec1ce19687d132fe29051dca629d164e2c4958ba141d5f4133a33f0688f\meta.json: The system cannot find the path specified.
|-----------|----------------|-------------|-----------------------------|
| NAMESPACE |      NAME      | TARGET PORT |             URL             |
|-----------|----------------|-------------|-----------------------------|
| default   | hello-minikube |        8080 | http://192.168.59.102:31184 |
|-----------|----------------|-------------|-----------------------------|
* Opening service default/hello-minikube in default browser...

CICD-Student@DESKTOP-FNUA4LH MINGW64 ~/cicdclass/vprofile-project/minikube (kubernetes-setup)
$

$ minikube dashboard
W0328 11:23:48.345426   25140 main.go:291] Unable to resolve the current Docker CLI context "default": context "default": context not found: open C:\Users\CICD-Student\.docker\contexts\meta\37a8eec1ce19687d132fe29051dca629d164e2c4958ba141d5f4133a33f0688f\meta.json: The system cannot find the path specified.
* Enabling dashboard ...
  - Using image docker.io/kubernetesui/dashboard:v2.7.0
  - Using image docker.io/kubernetesui/metrics-scraper:v1.0.8
* Some dashboard features require the metrics-server addon. To enable all features please run:

        minikube addons enable metrics-server


* Verifying dashboard health ...
* Launching proxy ...
* Verifying proxy health ...

dashboard is lunched and availabe at 
http://127.0.0.1:58119/api/v1/namespaces/kubernetes-dashboard/services/http:kubernetes-dashboard:/proxy/#/workloads?namespace=default


*** both PS or git bash NEED to run with administrator priviledge.
$ kubectl get nodes
NAME       STATUS   ROLES           AGE   VERSION
minikube   Ready    control-plane   13m   v1.28.3

CICD-Student@DESKTOP-FNUA4LH MINGW64 ~/cicdclass
$
CICD-Student@DESKTOP-FNUA4LH MINGW64 ~/cicdclass
$ ls  ~/.kube/
cache/  config

CICD-Student@DESKTOP-FNUA4LH MINGW64 ~/cicdclass
$ ls  ~/.kube/config
/c/Users/CICD-Student/.kube/config

CICD-Student@DESKTOP-FNUA4LH MINGW64 ~/cicdclass
$ pwd
/c/Users/CICD-Student/cicdclass

CICD-Student@DESKTOP-FNUA4LH MINGW64 ~/cicdclass
$ cat  ~/.kube/config
apiVersion: v1
clusters:
- cluster:
    certificate-authority: C:\Users\CICD-Student\.minikube\ca.crt
    extensions:
    - extension:
        last-update: Thu, 28 Mar 2024 10:55:09 PDT
        provider: minikube.sigs.k8s.io
        version: v1.32.0
      name: cluster_info
    server: https://192.168.59.102:8443
  name: minikube
contexts:
- context:
    cluster: minikube
    extensions:
    - extension:
        last-update: Thu, 28 Mar 2024 10:55:09 PDT
        provider: minikube.sigs.k8s.io
        version: v1.32.0
      name: context_info
    namespace: default
    user: minikube
  name: minikube
current-context: minikube
kind: Config
preferences: {}
users:
- name: minikube
  user:
    client-certificate: C:\Users\CICD-Student\.minikube\profiles\minikube\client.crt
    client-key: C:\Users\CICD-Student\.minikube\profiles\minikube\client.key

CICD-Student@DESKTOP-FNUA4LH MINGW64 ~/cicdclass
$



PS C:\Users\CICD-Student\cicdclass\vprofile-project\minikube> kubectl get nodes
NAME       STATUS   ROLES           AGE   VERSION
minikube   Ready    control-plane   14m   v1.28.3
PS C:\Users\CICD-Student\cicdclass\vprofile-project\minikube>
