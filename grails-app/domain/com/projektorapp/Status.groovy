package com.projektorapp

class Status {
    String lastEditor
    String description
    int statusNr

    static belongsTo = [tracecard:Tracecard]

    static constraints = {
        lastEditor(blank:false)
        description(blank:false, length:5..30)        
        statusNr(blank:false, range:0..99)
    }
}
