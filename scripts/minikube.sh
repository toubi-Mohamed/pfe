#Verify that your system has virtualization support enabled:
echo "$(egrep -q 'vmx|svm' /proc/cpuinfo && echo yes || echo no) virtualisation enabled"
# install minicube for debian/ubuntu 
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_1.3.1.deb \
 && sudo dpkg -i minikube_1.3.1.deb
 #install minicube for Centos/fedora 
 curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-1.3.1.rpm \
 && sudo rpm -ivh minikube-1.3.1.rpm
 #minicube version
 minicube version
 
