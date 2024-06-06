//* how much  precision to floats
// highp: bad performace, may now work on some devices
// lowp: good precision, may create bugs
// mediump: usually used
precision mediump float;

//* cames from the vertex
varying float vRandom;

void main() {
    gl_FragColor = vec4(vRandom, vRandom*0.5, 0.9, 1.0);
  
}