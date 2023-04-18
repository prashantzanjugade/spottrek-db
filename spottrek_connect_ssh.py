import paramiko
import os

client = paramiko.client.SSHClient()
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())

def connect_server():
    client.connect(os.getenv('host_ip_addr'), username=os.getenv('username'), password=os.getenv('password'), look_for_keys=False)
    print('Connection Established')

def sqitch_deploy():
    sftp = client.open_sftp()
    print(sftp.stat(os.getenv('dir_check')))
    print('Directory Exists')

    # os.system("sshpass -p userapp@123 rsync -avrz /root/spot/spottrek-db/ appuser@10.10.2.236:/home/appuser/spot/spottrek-db")
    os.system('sshpass -p ' + os.getenv('password') + ' rsync -av ' + os.getenv('from_path') + ' ' + os.getenv(
        'username') + '@' + os.getenv('host_ip_addr') + ':' + os.getenv('to_path'))

    #ssh_stdin, ssh_stdout, ssh_stderr = client.exec_command('cd test/sqitch_test/ ; sqitch deploy db:pg://appuser:12345@10.10.2.236:5432/sqitch_test')
    ssh_stdin, ssh_stdout, ssh_stderr = client.exec_command('cd '+os.getenv('cd_path')+'; sqitch deploy db:pg://'+os.getenv('db_user')+':'+os.getenv('db_password')
                                                            +'@'+os.getenv('host_ip_addr')+':'+os.getenv('port_no')+'/'+os.getenv('db_name'))
    ssh_stdin.close()
    ssh_stderr = ssh_stderr.read().decode()
    ssh_stdout = ssh_stdout.read().decode()
    print('Output :  Error:', ssh_stdout, ssh_stderr)

def start_sync():
    try:
        connect_server()
        sqitch_deploy()
    except Exception as e:
        print(e)
    finally:
        client.close()

if __name__ == "__main__":
    start_sync()

"""
export host_ip_addr=10.10.2.236
export port_no=5432
export username=appuser
export password=userapp@123
export dir_check=/home/appuser/spot/spottrek-db/
export from_path=/root/spot/spottrek-db/
export to_path=/home/appuser/spot/spottrek-db
export cd_path=spot/spottrek-db/
export db_name=spottrek
export db_user=spottrek
export db_password=spottrek
"""

"""
# sftp.put('/root/sqitch_test', '/home/appuser/test')
chan = client.invoke_shell()
chan.send('ls \n')
time.sleep(1)
resp = chan.recv(9999)
output = resp.decode('ascii').split(',')
print (''.join(output))
"""

""""
        chan = client.invoke_shell()
        chan.send('sudo su \n'
                  'cd test/sqitch_test/ \n'
                  'git remote remove origin \n'
                  'git remote add origin git@github.com:prashantzanjugade/sqitch_test.git \n'
                  'git pull origin master\n'
                  'git status\n'
                  #'git remote remove origin \n'
                  #'git remote add origin https://gitlab.barcindia.in/prashant.zanjugade/test.git \n'
                  #'git push \n'
                    )
        time.sleep(1)
        resp = chan.recv(9999)
        output = resp.decode('ascii').split(',')
        print(''.join(output))
        chan.send('git remote remove origin \n'
                  #'git remote add origin https://gitlab.barcindia.in/prashant.zanjugade/test.git \n'
                  #'git push \n'
                  )
        time.sleep(1)
        resp = chan.recv(9999)
        output = resp.decode('ascii').split(',')
        print(''.join(output))
        ssh_stdin, ssh_stdout, ssh_stderr =client.exec_command('ls \n ls -lrt')
        ssh_stderr=ssh_stderr.read().decode()
        ssh_stdout=ssh_stdout.read().decode()
        print('Output : ',ssh_stdout)
        print('Error : ',ssh_stderr)
        """
