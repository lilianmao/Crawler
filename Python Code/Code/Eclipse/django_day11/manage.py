#!/usr/bin/env python
#_*_ coding: UTF-8 _*_

import os
import sys

if __name__ == "__main__":
    os.environ.setdefault("DJANGO_SETTINGS_MODULE", "django_day11.settings")

    from django.core.management import execute_from_command_line

    execute_from_command_line(sys.argv)
