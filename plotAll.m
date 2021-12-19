clc
clear

figure('NumberTitle', 'off', 'Name', 'Visit test');
%% result-haproxy-factorialtest-leastconn-delay
haproxy_visittest_leastconn_delay = readtable('result-haproxy-visittest-leastconn-delay.csv');
haproxy_visittest_roundrobin_delay = readtable('result-haproxy-visittest-roundrobin-delay.csv');
nginx_visittest_leastconn_delay = readtable('result-nginx-visittest-leastconn-delay.csv');
nginx_visittest_roundrobin_delay = readtable('result-nginx-visittest-roundrobin-delay.csv');



%%random_selection_sort = readtable('random_selection_sort.csv');

subplot(2,3,1)
title('Request time')
plot(table2array(haproxy_visittest_leastconn_delay(1,:)),table2array(haproxy_visittest_leastconn_delay(2,:)))
hold on
plot(table2array(haproxy_visittest_roundrobin_delay(1,:)),table2array(haproxy_visittest_roundrobin_delay(2,:)))
hold on
plot(table2array(nginx_visittest_leastconn_delay(1,:)),table2array(nginx_visittest_leastconn_delay(2,:)))
hold on
plot(table2array(nginx_visittest_roundrobin_delay(1,:)),table2array(nginx_visittest_roundrobin_delay(2,:)))
legend('haproxy leastconn','haproxy roundrobin','nginx leastconn','nginx roundrobin')

xlabel('Number of replicas (N)')
ylabel('Request time[ms] (less is better)')
grid on




%% result-haproxy-factorialtest-leastconn-throughput
haproxy_visittest_leastconn_throughput = readtable('result-haproxy-visittest-leastconn-throughput.csv');
haproxy_visittest_roundrobin_throughput = readtable('result-haproxy-visittest-roundrobin-throughput.csv');
nginx_visittest_leastconn_throughput = readtable('result-nginx-visittest-leastconn-throughput.csv');
nginx_visittest_roundrobin_throughput = readtable('result-nginx-visittest-roundrobin-throughput.csv');



%%random_selection_sort = readtable('random_selection_sort.csv');

subplot(2,3,2)
title ('Throughput')
plot(table2array(haproxy_visittest_leastconn_throughput(1,:)),table2array(haproxy_visittest_leastconn_throughput(2,:)))
hold on
plot(table2array(haproxy_visittest_roundrobin_throughput(1,:)),table2array(haproxy_visittest_roundrobin_throughput(2,:)))
hold on
plot(table2array(nginx_visittest_leastconn_throughput(1,:)),table2array(nginx_visittest_leastconn_throughput(2,:)))
hold on
plot(table2array(nginx_visittest_roundrobin_throughput(1,:)),table2array(nginx_visittest_roundrobin_throughput(2,:)))

xlabel('Number of replicas (N)')
ylabel('Throughput[B/s] (more is better)')
grid on




%{
%% result-haproxy-factorialtest-leastconn-timeout_error
haproxy_visittest_leastconn_timeout_error = readtable('result-haproxy-visittest-leastconn-timeout_error.csv');
haproxy_visittest_roundrobin_timeout_error = readtable('result-haproxy-visittest-roundrobin-timeout_error.csv');
nginx_visittest_leastconn_timeout_error = readtable('result-nginx-visittest-leastconn-timeout_error.csv');
nginx_visittest_roundrobin_timeout_error = readtable('result-nginx-visittest-roundrobin-timeout_error.csv');



%%random_selection_sort = readtable('random_selection_sort.csv');

subplot(2,3,3)
plot(table2array(haproxy_visittest_leastconn_timeout_error(1,:)),table2array(haproxy_visittest_leastconn_timeout_error(2,:)))
hold on
plot(table2array(haproxy_visittest_roundrobin_timeout_error(1,:)),table2array(haproxy_visittest_roundrobin_timeout_error(2,:)))
hold on
plot(table2array(nginx_visittest_leastconn_timeout_error(1,:)),table2array(nginx_visittest_leastconn_timeout_error(2,:)))
hold on
plot(table2array(nginx_visittest_roundrobin_timeout_error(1,:)),table2array(nginx_visittest_roundrobin_timeout_error(2,:)))

xlabel('Number of replicas (N)')
ylabel('Number of Timeout errors[N] (less is better)')
grid on

%}



figure('NumberTitle', 'off', 'Name', 'factorial test');
%% result-haproxy-factorialtest-leastconn-delay
haproxy_factorialtest_leastconn_delay = readtable('result-haproxy-factorialtest-leastconn-delay.csv');
haproxy_factorialtest_roundrobin_delay = readtable('result-haproxy-factorialtest-roundrobin-delay.csv');
nginx_factorialtest_leastconn_delay = readtable('result-nginx-factorialtest-leastconn-delay.csv');
nginx_factorialtest_roundrobin_delay = readtable('result-nginx-factorialtest-roundrobin-delay.csv');



%%random_selection_sort = readtable('random_selection_sort.csv');

subplot(2,3,1)
plot(table2array(haproxy_factorialtest_leastconn_delay(1,:)),table2array(haproxy_factorialtest_leastconn_delay(2,:)))
hold on
plot(table2array(haproxy_factorialtest_roundrobin_delay(1,:)),table2array(haproxy_factorialtest_roundrobin_delay(2,:)))
hold on
plot(table2array(nginx_factorialtest_leastconn_delay(1,:)),table2array(nginx_factorialtest_leastconn_delay(2,:)))
hold on
plot(table2array(nginx_factorialtest_roundrobin_delay(1,:)),table2array(nginx_factorialtest_roundrobin_delay(2,:)))
legend('haproxy leastconn','haproxy roundrobin','nginx leastconn','nginx roundrobin')

xlabel('Number of replicas (N)')
ylabel('Request time[ms] (less is better)')
grid on




%% result-haproxy-factorialtest-leastconn-throughput
haproxy_factorialtest_leastconn_throughput = readtable('result-haproxy-factorialtest-leastconn-throughput.csv');
haproxy_factorialtest_roundrobin_throughput = readtable('result-haproxy-factorialtest-roundrobin-throughput.csv');
nginx_factorialtest_leastconn_throughput = readtable('result-nginx-factorialtest-leastconn-throughput.csv');
nginx_factorialtest_roundrobin_throughput = readtable('result-nginx-factorialtest-roundrobin-throughput.csv');



%%random_selection_sort = readtable('random_selection_sort.csv');

subplot(2,3,2)
plot(table2array(haproxy_factorialtest_leastconn_throughput(1,:)),table2array(haproxy_factorialtest_leastconn_throughput(2,:)))
hold on
plot(table2array(haproxy_factorialtest_roundrobin_throughput(1,:)),table2array(haproxy_factorialtest_roundrobin_throughput(2,:)))
hold on
plot(table2array(nginx_factorialtest_leastconn_throughput(1,:)),table2array(nginx_factorialtest_leastconn_throughput(2,:)))
hold on
plot(table2array(nginx_factorialtest_roundrobin_throughput(1,:)),table2array(nginx_factorialtest_roundrobin_throughput(2,:)))

xlabel('Number of replicas (N)')
ylabel('Throughput[B/s] (more is better)')
grid on


%{

%% result-haproxy-factorialtest-leastconn-timeout_error
haproxy_factorialtest_leastconn_timeout_error = readtable('result-haproxy-factorialtest-leastconn-timeout_error.csv');
haproxy_factorialtest_roundrobin_timeout_error = readtable('result-haproxy-factorialtest-roundrobin-timeout_error.csv');
nginx_factorialtest_leastconn_timeout_error = readtable('result-nginx-factorialtest-leastconn-timeout_error.csv');
nginx_factorialtest_roundrobin_timeout_error = readtable('result-nginx-factorialtest-roundrobin-timeout_error.csv');



%%random_selection_sort = readtable('random_selection_sort.csv');

subplot(2,3,3)
plot(table2array(haproxy_factorialtest_leastconn_timeout_error(1,:)),table2array(haproxy_factorialtest_leastconn_timeout_error(2,:)))
hold on
plot(table2array(haproxy_factorialtest_roundrobin_timeout_error(1,:)),table2array(haproxy_factorialtest_roundrobin_timeout_error(2,:)))
hold on
plot(table2array(nginx_factorialtest_leastconn_timeout_error(1,:)),table2array(nginx_factorialtest_leastconn_timeout_error(2,:)))
hold on
plot(table2array(nginx_factorialtest_roundrobin_timeout_error(1,:)),table2array(nginx_factorialtest_roundrobin_timeout_error(2,:)))

xlabel('Number of replicas (N)')
ylabel('Number of Timeout errors[N] (less is better)')
grid on

%}





figure('NumberTitle', 'off', 'Name', 'Image test');
%% result-haproxy-Imagetest-leastconn-delay
haproxy_imagetest_leastconn_delay = readtable('result-haproxy-imagetest-leastconn-delay.csv');
haproxy_imagetest_roundrobin_delay = readtable('result-haproxy-imagetest-roundrobin-delay.csv');
nginx_imagetest_leastconn_delay = readtable('result-nginx-imagetest-leastconn-delay.csv');
nginx_imagetest_roundrobin_delay = readtable('result-nginx-imagetest-roundrobin-delay.csv');



%%random_selection_sort = readtable('random_selection_sort.csv');

subplot(2,3,1)
title('Request time')
plot(table2array(haproxy_imagetest_leastconn_delay(1,:)),table2array(haproxy_imagetest_leastconn_delay(2,:)))
hold on
plot(table2array(haproxy_imagetest_roundrobin_delay(1,:)),table2array(haproxy_imagetest_roundrobin_delay(2,:)))
hold on
plot(table2array(nginx_imagetest_leastconn_delay(1,:)),table2array(nginx_imagetest_leastconn_delay(2,:)))
hold on
plot(table2array(nginx_imagetest_roundrobin_delay(1,:)),table2array(nginx_imagetest_roundrobin_delay(2,:)))
legend('haproxy leastconn','haproxy roundrobin','nginx leastconn','nginx roundrobin')

xlabel('Number of replicas (N)')
ylabel('Request time[ms] (less is better)')
grid on




%% result-haproxy-factorialtest-leastconn-throughput
haproxy_imagetest_leastconn_throughput = readtable('result-haproxy-imagetest-leastconn-throughput.csv');
haproxy_imagetest_roundrobin_throughput = readtable('result-haproxy-imagetest-roundrobin-throughput.csv');
nginx_imagetest_leastconn_throughput = readtable('result-nginx-imagetest-leastconn-throughput.csv');
nginx_imagetest_roundrobin_throughput = readtable('result-nginx-imagetest-roundrobin-throughput.csv');



%%random_selection_sort = readtable('random_selection_sort.csv');

subplot(2,3,2)
title ('Throughput')
plot(table2array(haproxy_imagetest_leastconn_throughput(1,:)),table2array(haproxy_imagetest_leastconn_throughput(2,:)))
hold on
plot(table2array(haproxy_imagetest_roundrobin_throughput(1,:)),table2array(haproxy_imagetest_roundrobin_throughput(2,:)))
hold on
plot(table2array(nginx_imagetest_leastconn_throughput(1,:)),table2array(nginx_imagetest_leastconn_throughput(2,:)))
hold on
plot(table2array(nginx_imagetest_roundrobin_throughput(1,:)),table2array(nginx_imagetest_roundrobin_throughput(2,:)))

xlabel('Number of replicas (N)')
ylabel('Throughput[B/s] (more is better)')
grid on





%% result-haproxy-factorialtest-leastconn-timeout_error
haproxy_imagetest_leastconn_timeout_error = readtable('result-haproxy-imagetest-leastconn-timeout_error.csv');
haproxy_imagetest_roundrobin_timeout_error = readtable('result-haproxy-imagetest-roundrobin-timeout_error.csv');
nginx_imagetest_leastconn_timeout_error = readtable('result-nginx-imagetest-leastconn-timeout_error.csv');
nginx_imagetest_roundrobin_timeout_error = readtable('result-nginx-imagetest-roundrobin-timeout_error.csv');

subplot(2,3,3)
plot(table2array(haproxy_imagetest_leastconn_timeout_error(1,:)),table2array(haproxy_imagetest_leastconn_timeout_error(2,:)))
hold on
plot(table2array(haproxy_imagetest_roundrobin_timeout_error(1,:)),table2array(haproxy_imagetest_roundrobin_timeout_error(2,:)))
hold on
plot(table2array(nginx_imagetest_leastconn_timeout_error(1,:)),table2array(nginx_imagetest_leastconn_timeout_error(2,:)))
hold on
plot(table2array(nginx_imagetest_roundrobin_timeout_error(1,:)),table2array(nginx_imagetest_roundrobin_timeout_error(2,:)))

xlabel('Number of replicas (N)')
ylabel('Number of Timeout errors[N] (less is better)')
grid on





%{
hold on

plot(table2array(descending_selection_sort(1,:)),table2array(descending_selection_sort(2,:)), 'r')
hold on

plot(table2array(constant_selection_sort(1,:)),table2array(constant_selection_sort(2,:)), 'y')
hold on

plot(table2array(random_selection_sort(1,:)),table2array(random_selection_sort(2,:)), 'b')
legend('Ascending','Descending','Constant','Random')
title('Selection sort')

%% Insertion sort
ascending_insertion_sort = readtable('ascending_insertion_sort.csv');
descending_insertion_sort = readtable('descending_insertion_sort.csv');
constant_insertion_sort = readtable('constant_insertion_sort.csv');
random_insertion_sort = readtable('random_insertion_sort.csv');

subplot(2,3,2)
plot(table2array(ascending_insertion_sort(1,:)),table2array(ascending_insertion_sort(2,:)))
xlabel('Elements (N)')
ylabel('T[ms] (Average)')
title('Insertion sort')
grid on

hold on
plot(table2array(descending_insertion_sort(1,:)),table2array(descending_insertion_sort(2,:)))
hold on
plot(table2array(constant_insertion_sort(1,:)),table2array(constant_insertion_sort(2,:)))
hold on
plot(table2array(random_insertion_sort(1,:)),table2array(random_insertion_sort(2,:)))
legend('Ascending','Descending','Constant','Random')

%% Quick part sort
ascending_quick_part_sort = readtable('ascending_quick_partition_sort.csv');
descending_quick_part_sort = readtable('descending_quick_partition_sort.csv');
constant_quick_part_sort = readtable('constant_quick_partition_sort.csv');
random_quick_part_sort = readtable('random_quick_partition_sort.csv');

subplot(2,3,3)
plot(table2array(ascending_quick_part_sort(1,:)),table2array(ascending_quick_part_sort(2,:)))
xlabel('Elements (N)')
ylabel('T[ms] (Average)')
grid on

hold on
plot(table2array(descending_quick_part_sort(1,:)),table2array(descending_quick_part_sort(2,:)))
hold on
plot(table2array(constant_quick_part_sort(1,:)),table2array(constant_quick_part_sort(2,:)))
hold on
plot(table2array(random_quick_part_sort(1,:)),table2array(random_quick_part_sort(2,:)))
title('Quick sort')
legend('Ascending','Descending','Constant','Random')

%% Quick med3
ascending_quick_med3_sort = readtable('ascending_quick_part3.csv');
descending_quick_med3_sort = readtable('descending_quick_part3.csv');
constant_quick_med3_sort = readtable('constant_quick_part3.csv');
random_quick_med3_sort = readtable('random_quick_part3.csv');

subplot(2,3,4)
plot(table2array(ascending_quick_med3_sort(1,:)),table2array(ascending_quick_med3_sort(2,:)))
xlabel('Elements (N)')
ylabel('T[ms] (Average)')
grid on

hold on
plot(table2array(descending_quick_med3_sort(1,:)),table2array(descending_quick_med3_sort(2,:)))
hold on
plot(table2array(constant_quick_med3_sort(1,:)),table2array(constant_quick_med3_sort(2,:)))
hold on
plot(table2array(random_quick_med3_sort(1,:)),table2array(random_quick_med3_sort(2,:)))
title('Quick median 3')
legend('Ascending','Descending','Constant','Random')

%% Std
ascending_std_sort = readtable('ascending_std_sort.csv');
descending_std_sort = readtable('descending_std_sort.csv');
constant_std_sort = readtable('constant_std_sort.csv');
random_std_sort = readtable('random_std_sort.csv');

subplot(2,3,5)
plot(table2array(ascending_std_sort(1,:)),table2array(ascending_std_sort(2,:)))
xlabel('Elements (N)')
ylabel('T[ms] (Average)')
grid on

hold on
plot(table2array(descending_std_sort(1,:)),table2array(descending_std_sort(2,:)))
hold on
plot(table2array(constant_std_sort(1,:)),table2array(constant_std_sort(2,:)))
hold on
plot(table2array(random_std_sort(1,:)),table2array(random_std_sort(2,:)))
title('Std sort')
legend('Ascending','Descending','Constant','Random')
%}