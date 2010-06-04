package com.projektorapp

class Task {
    String token
    String offerType
    String summary
    String description
    
    static belongsTo = [tracecard:Tracecard]
    static hasMany = [cooperators:Cooperator]

    static constraints = {
        token(unique:true, blank:false, length:5..30)
        summary(blank:false, maxLength:200)
        offerType(blank:false, inList:["after-expenses","fix"])
        description(blank:false, maxLength:1000)
    }
}
