from datetime import datetime

class Logger:
    """
    Logger class: Choose to write to db or to file
    Make sure to select the right path
    """
    def __init__(self,message):
        self.message = message
    
    def write_to_location(self, msg_type, filepath):
        time_recorded = datetime.now().strftime("%m/%d/%Y, %H:%M:%S")
        f = open(filepath, "a")
        msg_output = ''
        if(msg_type == 'a'):
            msg_output = 'ALERT'
        elif (msg_type == 'd'):
            msg_output = 'DEBUG'
        elif (msg_type == 'e'):
            msg_output = 'ERROR'
        else:
            msg_output = 'UNKNOWN'
        f.write("Message - {msg_output} - {time_recorded}".format(msg_output = msg_output, time_recorded = time_recorded))
        f.write("{msg}".format(msg = self.message))
        f.close()

    def write_to_database(self,msg_type):
        time_recorded = datetime.now().strftime("%m/%d/%Y, %H:%M:%S")
        msg_output = ''
        if(msg_type == 'a'):
            msg_output = 'ALERT'
        elif (msg_type == 'd'):
            msg_output = 'DEBUG'
        elif (msg_type == 'e'):
            msg_output = 'ERROR'
        else:
            msg_output = 'UNKNOWN'
        obj = {
            "type": msg_output,
            "time_recorded" : time_recorded,
            "message":self.message
        }
        # Write to db
        