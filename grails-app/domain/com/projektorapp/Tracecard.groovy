package com.projektorapp

class Tracecard {
    String creator
    String client
    String contact_name
    String contact_email
    String token
    String topic
    String domain
    String offerId
    String orderId
    String description
    Date dateCreated
    Date lastUpdated 
    Date deadline

    Status status
 
    static hasMany = [tasks:Task]
 
    static constraints = {
        creator(blank:false, minLength:3)
        client(blank:false, minLength:3)
        contact_name(blank:false, minLength:3)
        contact_email(email:true, blank:false)
        token(unique:true, blank:false, length:5..30)
        topic(blank:false, minLength:5)
        domain(blank:false, minLength:5)
        offerId(blank:true)
        orderId(blank:true)
        description(maxLength:1000)
    }

    def beforeInsert() {
        deadline = new Date() + 14
    }
}
