package com.projektorapp

class Cooperator {
    String name
    float hours_to_schedule
    float hours_to_invoice
    
    static belongsTo = [task:Task]
 
    static constraints = {
        name(blank:false, minLength:3)
        hours_to_schedule(nullable:false, scale:2)
        hours_to_invoice(nullable:false, scale:2)
    }
}
