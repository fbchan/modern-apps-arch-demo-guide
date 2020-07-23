Getting Started
---------------
..  image:: /_static/intro/udf_blueprint.jpg


Please follow the instructions provided to run your demo.

.. NOTE::
	 This is NOT a lab guide to build microservices PaaS enviroment.
	 It is a DEMO guide for Modern Application Architecture Blueprint.
	 All work for this guide can be performed from Windows
	 jumphost (RDP) for browser application access and Linux MGMT Jumphost (SSH) for kubectl CLI. 

Demo guide located on the same server as MGMT Jumphost and can be access via the following

..  image:: /_static/intro/demo_guide.png

Environment:
------------

..  image:: /_static/intro/demo_environment.jpg

Network Resources

+--------------------------+---------------+-----------------------+
|                          | IP Address    |     Network           |
+==========================+===============+=======================+
| Service Gateway 1        | 10.1.1.4      |      Management       |
+--------------------------+---------------+-----------------------+
| Service Gateway 2        | 10.1.1.5      |      Management       |
+--------------------------+---------------+-----------------------+
| Mgmt JumpHost            | 10.1.1.14     |      Management       |
+--------------------------+---------------+-----------------------+
| Windows JumpHost         | 10.1.1.13     |      Management       |
+--------------------------+---------------+-----------------------+
| Cluster1-k8s-01          | 10.1.1.245    |   AM_Cluster1_inside1 |
+--------------------------+---------------+-----------------------+
| Cluster1-k8s-02          | 10.1.20.245   |   AM_Cluster1_inside1 |
+--------------------------+---------------+-----------------------+
| Cluster1-k8s-03          | 10.1.10.131   |   AM_Cluster1_inside1 |
+--------------------------+---------------+-----------------------+
| Cluster2-k8s-01          | 10.1.10.132   |   AM_Cluster1_inside2 |
+--------------------------+---------------+-----------------------+
| Cluster2-k8s-02          | 10.1.10.120   |   AM_Cluster1_inside2 |
+--------------------------+---------------+-----------------------+
| Cluster2-k8s-03          | 10.1.10.115   |   AM_Cluster1_inside2 |
+--------------------------+---------------+-----------------------+

Bookmarks on Chrome browser on Windows Jumphost

..  image:: /_static/intro/bookmark-on-chrome.jpg

Tools used for the foundational architecture.
---------------------------------------------
+----+----------------------------------------------------------------+
|    | Tools                                                          |
+====+================================================================+
|  1 | Multiple Kubernetes Cluster (k8s-cluster1 & k8s-cluster2)      |
+----+----------------------------------------------------------------+
|  2 | Calico CNI                                                     |
+----+----------------------------------------------------------------+
|  3 | F5 BIG-IP BEST Bundle (Service Gateway)                        |
+----+----------------------------------------------------------------+
|  4 | Aspen Mesh Service Mesh                                        |
+----+----------------------------------------------------------------+
|  5 | NGINX+ Kubernetes Ingress Controller (KIC)                     |
+----+----------------------------------------------------------------+
|  6 | F5 Container Ingress Services (CIS)                            |
+----+----------------------------------------------------------------+
|  7 | F5 Application Services 3 (AS3)                                |
+----+----------------------------------------------------------------+
|  8 | Prometheus                                                     |
+----+----------------------------------------------------------------+
|  9 | Grafana                                                        |
+----+----------------------------------------------------------------+
| 10 | Jaeger                                                         |
+----+----------------------------------------------------------------+
| 11 | Glusterfs Persistent Storage                                   |
+----+----------------------------------------------------------------+
| 12 | Jenkins                                                        |
+----+----------------------------------------------------------------+
| 13 | NGINX App Protect                                              |
+----+----------------------------------------------------------------+
| 14 | Local Docker Registry                                          |
+----+----------------------------------------------------------------+

.. NOTE::
	 The blueprint may took approx 5 to 10min to fully operational as it has
	 close to 100 pods to start. Please ensure Aspen Mesh fully 
	 running before you commence your demo. SSH onto MGMT Jumphost and ensure  
	 1. "kubectl -n istio-system get pod (ensure all status "Running" with the right Ready. e.g. 1/1 or 2/2)    
	 2. Virtual Server on Service Gateway 1 and Service Gateway 2 are healthy 
	  


High Level Architecture
-----------------------

..  image:: /_static/intro/overview.jpg

..  image:: /_static/intro/cpaas_details.jpg


Why Modern Application Architecture?
------------------------------------
1. Applications are key differentation in a competitive market.
2. Rapid application software development lifecycle.
3. Accelerate time to market of applications delivery.
4. Increase business agility. 
5. Promote Agile methodology.
6. Distributed and de-compartmentalized components of an applications into a smaller components/services and each team/devops has automonus and can focus on building individual services in parallel.
7. Cloud native and cloud friendly.
8. xxx
9. yyy
10. zzz


Service Mesh Promises (High Level)
----------------------------------

..  image:: /_static/intro/service_mesh_provides.jpg



