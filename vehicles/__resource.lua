resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'
 
files {
    'vehicles.meta',
    'carvariations.meta',
    'carcols.meta',
    'handling.meta',
    'vehiclelayouts.meta',
	'stream/[topcar]/pbal/pbal.xml',
    'stream/[topcar]/pmas/pmas.xml',
	'stream/[topcar]/pasprinter/pasprinter.xml',
	'stream/[jobs]/autocare/flatbed3.xml',
	'stream/[jobs]/autocare/anwbt6.xml',
	'stream/[topcar]/pvito/pvito.xml',
	'stream/[topcar]/prs6/prs6.xml',
    'stream/[topcar]/ptouran/PTOURAN.xml',
    'stream/[topcar]/pbklasse/PBKLASSE.xml',
    'stream/[topcar]/paudi/PAUDI.xml',
    'stream/[topcar]/pamarok/PAMAROK.xml',
    'stream/[topcar]/pfosprinter/PFOSPRINTER.xml',
    'stream/[topcar]/ptouran11/PTOURAN11.xml',
    'stream/[topcar]/pt5/PT5.xml',
    'stream/[topcar]/pt6/PT6.xml',
    'stream/[topcar]/dsimerc/DSIMERC.xml',
    'stream/[topcar]/dsiq5/DSIQ5.xml',
    'stream/[topcar]/dsivito/DSIVITO.xml',
    'stream/[topcar]/pschafter/PSCHAFTER.xml',
    'stream/[topcar]/poracle/PORACLE.xml',
    'stream/[topcar]/pbmwmotor2/PBMWMOTOR2.xml',
    'stream/[topcar]/pyamahamotor/PYAMAHAMOTOR.xml',
    'stream/[topcar]/pboot/PBOOT.xml',
    'stream/[topcar]/pkmar/police2.xml',
    'stream/[topcar]/pvw/police3.xml',
    'stream/[dienst]/sneeuwschuiver/sneeuwschuiver.xml',
    'stream/[ambulance]/asprinter/asprinter.xml',
    'stream/[ambulance]/aeklasse/AEKLASSE.xml',
    'stream/[ambulance]/ambu/ambulance.xml',
    'stream/[replace]/burrito4/burrito4.xml',
	
}
 
data_file 'HANDLING_FILE' 'handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'vehicles.meta'
data_file 'CARCOLS_FILE' 'carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'vehiclelayouts.meta'
 
client_scripts 'vehicle_names.lua'

is_els 'true'