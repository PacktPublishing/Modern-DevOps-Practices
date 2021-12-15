# Modern DevOps Practices

<a href="https://www.packtpub.com/in/cloud-networking/modern-devops-tips-tricks-and-techniques?utm_source=github&utm_medium=repository&utm_campaign=9781800562387"><img src="https://static.packt-cdn.com/products/9781800562387/cover/smaller" alt="Modern DevOps Practices" height="256px" align="right"></a>

This is the code repository for [Modern DevOps Practices](https://www.packtpub.com/in/cloud-networking/modern-devops-tips-tricks-and-techniques?utm_source=github&utm_medium=repository&utm_campaign=9781800562387), published by Packt.

**Modern DevOps Practices, published by Packt**

## What is this book about?
Containers have entirely changed how developers and end-users see applications as a whole. With this book, you'll learn all about containers, their architecture and benefits, and how to implement them within your development lifecycle. 

This book covers the following exciting features:
* Become well-versed with AWS ECS, Google Cloud Run, and Knative
* Discover how to build and manage secure Docker images efficiently
* Understand continuous integration with Jenkins on Kubernetes and GitHub actions
* Get to grips with using Spinnaker for continuous deployment/delivery
* Manage immutable infrastructure on the cloud with Packer, Terraform, and Ansible
* Explore the world of GitOps with GitHub actions, Terraform, and Flux CD

If you feel this book is for you, get your [copy](https://www.amazon.com/dp/1800562381) today!

<a href="https://www.packtpub.com/?utm_source=github&utm_medium=banner&utm_campaign=GitHubBanner"><img src="https://raw.githubusercontent.com/PacktPublishing/GitHub/master/GitHub.png" 
alt="https://www.packtpub.com/" border="5" /></a>

## Instructions and Navigations
All of the code is organized into folders. For example, Chapter02.

The code will look like the following:
```
...
    spec:
     containers:
       - image: '<your_docker_user>/flask-app-secret:1'
         name: flask-app
         ports:
          - containerPort: 5000
         env:
          - name: SECRET
            valueFrom:
               secretKeyRef:
                 name: flask-app-secret
                 key: SECRET
```

**Following is what you need for this book:**
If you are a software engineer, system administrator, or operations engineer looking to step into the world of DevOps within public cloud platforms, this book is for you. Existing DevOps engineers will also find this book useful as it covers best practices, tips, and tricks to implement DevOps with a cloud-native mindset. Although no containerization experience is necessary, a basic understanding of the software development life cycle and delivery will help you get the most out of the book.

With the following software and hardware list you can run all code files present in the book (Chapter 1-14).
### Software and Hardware List
| Chapter | Software required | OS required |
| -------- | ------------------------------------ | ----------------------------------- |
| 5,11,12,13,14 | Google Cloud Platform | Windows, Mac OS X, and Linux (Any) |
| 6,7,8 | Azure | Windows, Mac OS X, and Linux (Any) |
| 9,10 | AWS | Windows, Mac OS X, and Linux (Any) |
| 1-14 | A Linux Machine (physical or virtual) | Ubuntu 16.04 Xenial LTS |

We also provide a PDF file that has color images of the screenshots/diagrams used in this book. [Click here to download it](http://www.packtpub.com/sites/default/files/downloads/9781800562387_ColorImages.pdf).

## Errata

* Page 137 (Paragraph 1, line 5): `['sh', '-c', 'cp -L /config/nginx.conf /etc/nginx/nginx.conf && sed -i "s/REDIS_HOST/${REDIS_HOST}/g" /etc/nginx/nginx.conf']` _should be_`['sh', '-c', 'cp -L /config/nginx.conf /etc/nginx/nginx.conf && sed -i "s/REDIS_HOST/${REDIS_HOST}/g" /etc/nginx/nginx.conf && sed -i "s/REDIS_PORT/${REDIS_PORT}/g" /etc/nginx/nginx.conf']"`
* Page 252 (Paragraph 5, line 4): `$ sudo su - ansible` _should be_`$ sudo su - ansible`
* Page 254 (Paragraph 4, line 1): `$ sudo su - ansible` _should be_`$ sudo su - ansible`

### Related products
* Google Cloud for DevOps Engineers [[Packt]](https://www.packtpub.com/product/google-cloud-for-devops-engineers/9781839218019?utm_source=github&utm_medium=repository&utm_campaign=9781839218019) [[Amazon]](https://www.amazon.com/dp/1839218010)

* Repeatability, Reliability, and Scalability through GitOps [[Packt]](https://www.packtpub.com/product/repeatability-reliability-and-scalability-through-gitops/9781801077798?utm_source=github&utm_medium=repository&utm_campaign=9781801077798) [[Amazon]](https://www.amazon.com/dp/1801077797)

## Get to Know the Author
**Gaurav Agarwal**
has a decade of experience as a Site Reliability Engineer, Architect, Tech Influencer, Trainer, Mentor, and a Developer. Currently, Gaurav works as Cloud SRE at ThoughtSpot Inc. Prior to that, Gaurav worked as a Cloud Solutions Architect at Capgemini and as a Software Developer at TCS. Gaurav has a B.Tech. in Electronics and Communication Engineering, and he is a Certified Kubernetes Administrator, Certified Terraform Associate and a Google Cloud Certified Professional Cloud Architect. When not working, Gaurav enjoys time with his wonderful wife Deepti and loves to read about History, Human Civilization and Arts.
