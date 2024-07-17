using app.arbeitsberichtswesen from '../db/arbeitsberichtswesen';
using V_EXAMPLE from '../db/arbeitsberichtswesen';
using V_ARBEITSBERICHTSWESEN from '../db/arbeitsberichtswesen';
using V_KORREKTURBEDARF from '../db/arbeitsberichtswesen';


service EntryService{
    @requires: 'authenticated-user'
    entity Entry as projection on arbeitsberichtswesen.Entry;

    
    @requires: 'Admin'
    @restrict: [{ grant: 'READ'}] 
    //@requires: 'authenticated-user'
    entity Source_Type as projection on arbeitsberichtswesen.Source_Type;

    @readonly
    entity V_Example as projection on V_EXAMPLE;


    @readonly
    entity Arbeitsberichtswesen as projection on V_ARBEITSBERICHTSWESEN;

    @requires: 'authenticated-user'
    entity Korrekturbedarf as projection on V_KORREKTURBEDARF;
}