BEGIN {
    FS="[<>]";
}

/^<.*>$/ {
    if ( $(NF-1) == ("/" $2) ) {
        print;
    }
}
