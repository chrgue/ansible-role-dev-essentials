#!/bin/bash


# Install ansible



ansible-galaxy install chrgue.development_essentials

ansible localhost -m include_role -a name=chrgue.development_essentials