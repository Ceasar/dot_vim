import os

import git_warden

PWD = os.getcwd()

PLUGINS_DIR = os.path.join(PWD, ".vim", "bundle")


def install(remote):
    """Install a plugin from a remote."""
    git_warden.install(PLUGINS_DIR, remote)


def update(repo=None):
    """Update a plugin or all of them if none is specified."""
    git_warden.update(PLUGINS_DIR, repo)


def uninstall(repo=None):
    """Uninstall a plugin or all of them if none is specified."""
    git_warden.uninstall(PLUGINS_DIR, repo)
