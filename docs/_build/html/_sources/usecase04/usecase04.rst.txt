Usecase 04: Aspen Mesh Secure Ingress
=====================================


.. NOTE::
   Demonstrate Aspen Mesh Secure Ingress

Secure Ingress helps to provide role segregation - Platform Owner and Application Developer.

Details of Aspen Mesh Secure ingress can be obtained from aspenmesh.io.
https://aspenmesh.io/announcing-aspen-mesh-secure-ingress-policy/



Guide:
------
Before configure Aspen Mesh Secure Ingress. https://js.f5.local not exposed

..  image:: /_static/usecase04/1-before-si-juiceshop.jpg


Pre-created Jenkins Jobs

..  image:: /_static/usecase04/2-jenkin-jobs.jpg


Secure Ingress require TLS certificate to function. One of the way is to create manual TLS certificate as a secret. This demo uses manual TLS certificate.

..  image:: /_static/usecase04/3-build-00.jpg


Ensure job successfully runs. Do not proceed if fail.

..  image:: /_static/usecase04/4-success-00.jpg


Next, as a Platform Owner, Platform Owner / Infrastructure Operator create secure ingress specification that define the security and networking aspects of the platform.

..  image:: /_static/usecase04/5-build-01.jpg


Ensure job successfully runs. Do not proceed if fail.

..  image:: /_static/usecase04/6-success-01.jpg


If you using Blue Ocean Dashboard.

..  image:: /_static/usecase04/5-1-build-with-BO-01.jpg


Next, as Application Developer, Developer create application specification for their service.

..  image:: /_static/usecase04/7-build-02.jpg


Ensure job successfully runs. Do not proceed if fail.

..  image:: /_static/usecase04/8-success-02.jpg


If you using Blue Ocean Dashboard

..  image:: /_static/usecase04/7-1-build-with-BO-02.jpg


If you using Blue Ocean Dashboard

..  image:: /_static/usecase04/9-after-si-juiceshop-working.jpg


Make sure you do a clean up after the demo so that you can run subseqent demo.

..  image:: /_static/usecase04/10-clean-up.jpg


.. toctree::
   :maxdepth: 1
   :glob:

