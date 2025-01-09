
#!/bin/bash
echo "$* stores the complete set of positional parameters as a single string"
echo "$$ PID of current shell"

sleep 2 &
echo "$!PID of last background job"
