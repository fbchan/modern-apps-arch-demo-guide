Usecase 03: Security Violation - rogue connection
=================================================

Objective:
----------

.. NOTE::
   Demonstrate Aspen Mesh capabilities on detecting suspicious compromised pod in microservices via observability and analytics.

Guide:
------
Note:
This demo executed on Cluster 2 (cPaaS2)

1. Logon to Aspen Mesh Cluster 2 Dashboard
2. Show bookinfo apps service graph
3. SSH onto MGMT Jumphost
4. Change directory to k8s-cluster2/xploit/
5. Display Aspem Mesh service graph before xploit.

..  image:: /_static/intro/bookinfo-normal.jpg

6. Execute the following command

.. code-block:: none

   ubuntu@ip-10-1-1-13:~/k8s-cluster2/xploit$ ls -al
   total 32
   drwxrwxr-x 2 ubuntu ubuntu 4096 May 15 01:51 .
   drwxr-xr-x 7 ubuntu ubuntu 4096 May 19 05:07 ..
   -rwxrw-r-- 1 ubuntu ubuntu 2841 May 15 01:37 1_inject.sh
   -rwxrw-r-- 1 ubuntu ubuntu  319 May 15 01:48 2_xploit.sh
   -rw-rw-r-- 1 ubuntu ubuntu  220 May 15 01:44 disable-tls.yml
   -rw-rw-r-- 1 ubuntu ubuntu  529 May 15 01:43 enable-tls.yml
   -rw-rw-r-- 1 ubuntu ubuntu 2070 May 15 01:51 remove-connection.yml
   -rw-rw-r-- 1 ubuntu ubuntu  213 May 15 01:50 scan.sh
   ubuntu@ip-10-1-1-13:~/k8s-cluster2/xploit$ ./1_inject.sh
   serviceentry.networking.istio.io/tor created
   virtualservice.networking.istio.io/tor created
   serviceentry.networking.istio.io/ebay created
   virtualservice.networking.istio.io/ebay created
   serviceentry.networking.istio.io/rob1 created
   virtualservice.networking.istio.io/rob1 created
   serviceentry.networking.istio.io/rob2 created
   virtualservice.networking.istio.io/rob2 created
   deployment.apps/details-v1 unchanged
   ubuntu@ip-10-1-1-13:~/k8s-cluster2/xploit$ ./2_xploit.sh
   policy.authentication.istio.io/details-policy configured
   

6. Wait for few second for Aspen Mesh Service Graph to display those suspicious connection

Example

..  image:: /_static/intro/bookinfo-compromised.jpg

7. To stop exploit, run the following command

.. code-block:: none

   To Re-Enable mTLS
   ubuntu@ip-10-1-1-13:~/k8s-cluster2/xploit$ kubectl -n bookinfo apply -f enable-tls.yml
   policy.authentication.istio.io/details-policy configured
   ubuntu@ip-10-1-1-13:~/k8s-cluster2/xploit$
   
   To remove service entries.
   ubuntu@ip-10-1-1-13:~/k8s-cluster2/xploit$ kubectl -n bookinfo delete -f remove-connection.yml
   serviceentry.networking.istio.io "tor" deleted
   virtualservice.networking.istio.io "tor" deleted
   serviceentry.networking.istio.io "ebay" deleted
   virtualservice.networking.istio.io "ebay" deleted
   serviceentry.networking.istio.io "rob1" deleted
   virtualservice.networking.istio.io "rob1" deleted
   serviceentry.networking.istio.io "rob2" deleted
   virtualservice.networking.istio.io "rob2" deleted
   ubuntu@ip-10-1-1-13:~/k8s-cluster2/xploit$
   


8. From browser on Windows Jumphost, keep browsing to bookinfo2 apps (https://bookinfo2.f5.local)
9. Wait for few minutes (Aspen Mesh need time to collect traffic to conclude connections stopped)

Expected result after collected enought traffic data

..  image:: /_static/intro/hipster-back-to-normal.jpg


.. toctree::
   :maxdepth: 1
   :glob:

