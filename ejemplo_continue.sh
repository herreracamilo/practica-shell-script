for i in {1..5}; do
    if [ $i -eq 3 ]; then
        continue # Omite el resto del código cuando i es 3
    fi
    echo "Número: $i"
done
