*/
//1-
//Ejemplo:
/*db.Empleados.insertOne({'_id': 9, 'nombre': 'Pedro',   'apellido': 'Torres', 'Cargo': 'Ingeniero en jefe', 'Nomina': 10000000, 'fechadecontratación':new Date('1999,08,04T21:23:13.331Z'), 'estado':true,"Empresa": {"_id": ObjectId('628ae12f106938818bc8351d')}})
//Respuesta
db.Empleados.insertOne({'_id': 10, 'nombre': 'Johan',   'apellido': 'Garzon', 'Cargo': 'Ingeniero de Software', 'Nomina': 1500000, 'fechadecontratación':new Date('2022,01,03T21:23:13.331Z'), 'estado':true,"Empresa": {"_id": ObjectId('628ae12f106938818bc8351d')}})
//2-
db.Empleados.insertMany([
   { '_id': 11, "nombre": 'Juan', 'apellido': 'Troncoso', 'Cargo': 'Controlador de inventario', 'Nomina': 1200000, 'fechadecontratación': new Date('2020-03-01T08:00:00Z'),'estado':true, "Empresa": {"_id": ObjectId(14)} },
  { '_id': 12, 'nombre': 'Diana', 'apellido': 'Sanchez', 'Cargo': 'Profesor', 'Nomina': 9000000, 'fecha de contratación': new Date('2014-10-01T08:00:00Z'),'estado':true, "Empresa": {"_id": ObjectId(15)} },
]);
//3-
db.Empresa.drop();
db.createCollection('Empresa');
db.Empresa.insertMany([
  { 'nombre': '', 'direccion': '', 'telefono': '' , 'fechadecreacion': ''},
  { 'nombre': '', 'direccion': '', 'telefono': '' , 'fechadecreacion': ''},
  { 'nombre': '', 'direccion': '', 'telefono': '' , 'fechadecreacion': ''},
  { 'nombre': '', 'direccion': '', 'telefono': '' , 'fechadecreacion': ''},

]);
//4-
db.Empresa.drop();
db.createCollection('Empresa');
db.Empresa.insertMany([
  { 'nombre': 'Nike', 'direccion': 'Calle 100', 'telefono': 123456789, 'fechadecreacion': new Date('1900-01-01T12:00:00Z')},
  { 'nombre': 'Adidas', 'direccion': 'Calle 80', 'telefono': 987654321, 'fechadecreacion': new Date('1900-01-01T08:00:00Z')},
  { 'nombre': 'Puma', 'direccion': 'Calle 127', 'telefono': 912837465, 'fechadecreacion': new Date('1900-01-01T08:00:00Z')},
  { 'nombre': 'Reebock', 'direccion': 'Calle 75', 'telefono': 163927374, 'fechadecreacion': new Date('1900-01-01T12:00:00Z')},
]);
db.Empresa.drop();
db.createCollection('Empresa');
db.Empresa.insertMany([
  { '_id': 1, 'nombre': 'Nike', 'direccion': 'Calle 100', 'telefono': 123456789, 'fechadecreacion': new Date('1900-01-01T12:00:00Z')},
  { '_id': 2, 'nombre': 'Adidas', 'direccion': 'Calle 80', 'telefono': 987654321, 'fechadecreacion': new Date('1900-01-01T08:00:00Z')},
  { '_id': 3, 'nombre': 'Puma', 'direccion': 'Calle 127', 'telefono': 912837465, 'fechadecreacion': new Date('1900-01-01T08:00:00Z')},
  { '_id': 4, 'nombre': 'Reebock', 'direccion': 'Calle 75', 'telefono': 163927374, 'fechadecreacion': new Date('1900-01-01T12:00:00Z')},
  { 'nombre': 'Fila', 'direccion': 'Calle 75', 'telefono': 750566267, 'fechadecreacion': new Date('1900-01-01T12:00:00Z')},
]);
//5-
/*db.Empresa.aggregate([
    {
        $match: {
            _id: ObjectId("628af355eddfd07187bd5b31")
            }
    }
    ,{
        $lookup: {
            from: "Empleados",
            localField: "_id",
            foreignField: "Empresa",
            as: "Empleados "
            }
    }
    ]);
*/ 
//7
db.Empleados.deleteMany({"Empresa_Id": ObjectId("628b045a63de691425d52395")})
db.Empleados.find()
//8
db.Empresa.updateOne({'_id':ObjectId("628b045a63de691425d52395")},{$set:{'nombre':'Univerisad EAN'}})
db.Empresa.find({})
//9
db.Empleados.find({$and: [{'Nomina': {$gte: 1000000}}, {'Nomina': {$lte: 6000000}}]})
//10
//db.Empleados.find({'_id': ObjectId("628b045a63de691425d52395")}, {"Nomina": 1})
/*