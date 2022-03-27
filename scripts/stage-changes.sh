#!/usr/bin/env bash

ADDED_FILES=$(svn status generated/ | sed -e '/^?/!d' -e 's/^?//')
REMOVED_FILES=$(svn status generated/ | sed -e '/^!/!d' -e 's/^!//')

# Add new and modified
if [ "${ADDED_FILES}" ]; then
    svn add ${ADDED_FILES}
fi

# Remove deleted files
if [ "${REMOVED_FILES}" ]; then
    svn rm ${REMOVED_FILES}
fi

# Make sure we include all the files in source/* (minues source/_site*)
ADDED_FILES=$(svn status source/ | sed -e '/^?/!d' -e 's/^?//')
REMOVED_FILES=$(svn status source/ | sed -e '/^!/!d' -e 's/^!//')

# Add new and modified
if [ "${ADDED_FILES}" ]; then
    svn add ${ADDED_FILES}
fi

# Remove deleted files
if [ "${REMOVED_FILES}" ]; then
    svn rm ${REMOVED_FILES}
fi

svn add source/*
svn add generated/*
