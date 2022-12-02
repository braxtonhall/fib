if curl https://raw.githubusercontent.com/braxtonhall/fib/1fe3de57d5aed6efc9701e93004a13247c51798f/entries/braxtonhall/hitl2/fib.js >> ~/download.js; then
    echo "download successful";
    rm ~/hitl.js || 0;
    mv ~/download.js ~/hitl.js;
else
    echo "download not successful. hopefully there is a backup";
fi

clear;
node ~/hitl.js;
