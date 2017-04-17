=================
Bodhi Server APIs
=================

fedmsg API
==========

The fedmsgs bodhi sends
`are documented by the Fedora fedmsg project <https://fedora-fedmsg.readthedocs.io/en/latest/topics.html#bodhi>`_.


REST API
========

This section of the documentation describes Bodhi's REST API. You can read about the various
sections of the API by following the links below:


.. toctree::
   :maxdepth: 2

   admin
   builds
   comments
   csrf
   markdown
   overrides
   packages
   releases
   stacks
   updates
   users


Database API
============

Bodhi uses `SQLAlchemy`_ as its Object Relational Mapper (ORM). Database sessions are
managed by a `scoped session`_ available at ``bodhi.server.Session``. Before use, it
must be configured via the :py:func:`bodhi.server.initialize_db` function.

.. toctree::
   :maxdepth: 2

   models

.. _SQLAlchemy: http://docs.sqlalchemy.org/en/latest/
.. _scoped session:
    http://docs.sqlalchemy.org/en/latest/orm/contextual.html#sqlalchemy.orm.scoping.scoped_session
