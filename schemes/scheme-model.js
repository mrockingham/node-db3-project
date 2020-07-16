const db = require('../data/db-config')


module.exports={
    find,
    findById,
    findSteps,
    add,
    update,
    remove
}

function find(){return db('schemes')
}

function findById(id) {
    return db("schemes").where({ id }).first();
}

function findSteps(id ) {
   
    return db("schemes")
    .join('steps', 'steps.scheme_id', 'schemes.id')    
    .select ('schemes.scheme_name', 'steps.step_number', 'steps.instructions')
    .where("schemes.id", id)
    .orderBy('steps.step_number')
      
  }

  function add(scheme){
    return db("schemes")
    .insert(scheme, "id")
    
  }

  function update(changes, id) {
    return db("schemes")
      .where('id', id)
      .update(changes)
      
  }

  function remove(id) {
    return db("schemes")
      .where("id", id)
      .del();
  }