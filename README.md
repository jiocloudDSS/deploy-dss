# deploy-dss

For deployment of fresh cluster

1. Modify env=vagrant-vbox or staging accordinly in make_userdata.txt

2. For the first time, run first_time.sh. It will generate consul token and userdata.txt.

3. Add the machine ips in machines.txt. All the machines should be ssh enabled.

4. Run add_machine.sh to run userdata.txt on all the new machines.

To clean old cluster 

1. Run list_machines.sh , list_mon.sh, list_st.sh.
2. Run remove_puppet.sh using transfer_run_background_script.sh on all the machines listed in 
    transfer_run_background_script.sh remove_puppet.sh all_machines.txt
3. Clean mons
    transfer_run_background_script.sh clean_mon.sh all_mon.txt 
4.  Clean st
    transfer_run_background_script.sh clean_st.sh  all_st.txt

You should have ssh pwdless access to all the machines for the above to work. 
