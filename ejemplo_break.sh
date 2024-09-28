for i in {1..5}; do
    if [ $i -eq 3 ]; then
        break # Sale del bucle cuando i es 3
    fi
    echo "Número: $i"
done
