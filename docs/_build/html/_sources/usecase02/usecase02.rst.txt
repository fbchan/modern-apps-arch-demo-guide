Usecase 02: Multi-Cluster, Multi-Cloud Application Resiliency
==============================================================
Objective:
----------

.. NOTE::
   Demonstrate application resiliency via Service Gateway (GSLB capabilities) to redirect user connection from cluster cPaaS1 to the other cluster cPaaS2 in the event if application in cPaaS1 when offline.


Guide:
------
1. RDP to Windows
2. Access to https://hipster.f5.local

..  image:: /_static/intro/1-gslb.jpg

3. Show Service Gateway GSLB Configuration (On Service Gateway 1)

..  image:: /_static/intro/2-gslb.jpg

4. GSLB performing Global Availability for both cluster for hipster application

..  image:: /_static/intro/3-gslb.jpg

5. Simulate hipster application failure in cPaaS1 by disabling igw1_offload_ingress on cPaaS1.

..  image:: /_static/intro/4-gslb.jpg

6. GSLB detected VS used by hipster on cPaaS1 unavailable

..  image:: /_static/intro/5-gslb.jpg

7. Refresh Chrome Browser on https://hipster.f5.local. You will need to clear cache as hipster contents are mostly static and it may replay from static contents instead of feteching content from cPaaS2

..  image:: /_static/intro/6-gslb.jpg

8. GSLB successfully redirect user accessing to https://hipster.f5.local to cPaaS2 cluster. To identify accessing to different cluster, hipster on cPaaS2 was setup with different look and feel.

..  image:: /_static/intro/7-gslb.jpg


.. toctree::
   :maxdepth: 1
   :glob:

