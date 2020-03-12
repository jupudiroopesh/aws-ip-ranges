# aws-ip-ranges

To run the script
- Install ruby
- Run `ruby get_ip_ranges.rb pass_region_name`

**Validations**

*If you dont pass any arguments*

`$ruby get_ip_ranges.rb`
**You will get a message saying**
please pass the region name as the argument
You can run as ruby get_ip_ranges.rb us-east-1

*If you pass an unknown region*

`$ ruby get_ip_ranges.rb ap-southeast`

**You will get a message saying**

"Getting the IP ranges for the region: ap-southeast"
 Please enter a valid region name"

`$ ruby get_ip_ranges.rb ap-southeast-1`

**Output** 

"Getting the IP ranges for the region: ap-southeast-1"
52.95.212.0/22
15.193.2.0/24
52.74.0.0/16
52.93.8.0/22
103.246.148.0/23
52.219.132.0/22
54.254.0.0/16
54.255.0.0/16
13.228.0.0/15
52.92.56.0/22
52.93.19.236/32
15.221.8.0/21
175.41.128.0/18
54.240.199.0/24
18.142.0.0/15
46.137.192.0/19
52.76.0.0/17
15.177.82.0/24
122.248.192.0/18
54.240.227.0/24
52.93.19.237/32
46.51.216.0/21
52.95.35.0/24
52.144.231.64/26
99.82.173.0/24
99.77.143.0/24
52.220.0.0/15
52.94.11.0/24
52.94.248.32/28
52.219.40.0/22
52.76.128.0/17
52.219.32.0/21
52.219.48.0/22
54.251.0.0/16
150.222.78.0/24
13.248.107.0/24
52.95.255.32/28
18.140.0.0/15
52.94.198.96/28
52.219.124.0/22
18.138.0.0/15
52.219.128.0/22
52.95.242.0/24
150.222.108.0/24
54.240.226.0/24
46.137.224.0/19
54.169.0.0/16
54.179.0.0/16
52.119.184.0/22
3.0.0.0/15
43.250.193.0/24
52.77.0.0/16
52.119.205.0/24
43.250.192.0/24
54.151.128.0/17
13.250.0.0/15
52.144.224.128/26
54.239.0.96/28
18.136.0.0/16
52.93.63.0/24
203.83.220.0/22
54.255.254.192/26
54.251.31.128/26
52.219.132.0/22
52.92.56.0/22
52.219.40.0/22
52.219.32.0/21
52.219.48.0/22
52.219.124.0/22
52.219.128.0/22
52.94.11.0/24
15.193.2.0/24
52.74.0.0/16
54.254.0.0/16
54.255.0.0/16
13.228.0.0/15
175.41.128.0/18
18.142.0.0/15
46.137.192.0/19
52.76.0.0/17
15.177.82.0/24
122.248.192.0/18
46.51.216.0/21
99.77.143.0/24
52.220.0.0/15
52.94.248.32/28
52.76.128.0/17
54.251.0.0/16
52.95.255.32/28
18.140.0.0/15
18.138.0.0/15
52.95.242.0/24
46.137.224.0/19
54.169.0.0/16
54.179.0.0/16
3.0.0.0/15
52.77.0.0/16
52.119.205.0/24
54.151.128.0/17
13.250.0.0/15
18.136.0.0/16
52.221.221.128/29
99.82.173.0/24
13.248.107.0/24
15.177.82.0/24
13.228.69.0/24
52.220.191.0/26
13.251.113.64/26
13.251.116.0/23
18.138.134.128/25
18.138.244.0/23
13.250.186.128/27
13.250.186.160/27
3.0.5.32/29
52.76.127.0/24
The number of IP ranges in the region ap-southeast-1 are: 115
