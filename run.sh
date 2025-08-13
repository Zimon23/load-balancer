 #/bin/sh
      for i in {1..6}; do curl -s localhost:8000 | grep hostname; sleep 1; done

      chmod +x run.sh 
      
