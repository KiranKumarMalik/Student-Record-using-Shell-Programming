#!/bin/bash

options=("Create Student Database" "View Databse" "Insert a record" "Delete  a record" "Modify a record" "Result of particular student")


opt_menu=$(zenity --list --title="Option Menu" --column="Available Options" "${options[@]}" --width=600 --height=800)
