// badprog.com
#include<stdio.h>
#include <GL/glut.h>


void Keys();



/* Initialize OpenGL Graphics */

void initGL() {
   glClearColor(0.0f, 0.0f, 0.0f, 1.0f); // Set background color to black and opaque
   //glClearDepth(1.0f);                   // Set background depth to farthest
   glEnable(GL_DEPTH_TEST);   // Enable depth testing for z-culling
   glDepthFunc(GL_LEQUAL);    // Set the type of depth-test
   //glShadeModel(GL_SMOOTH);   // Enable smooth shading
   glHint(GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST);  // Nice perspective corrections
}


void displayMe(void)
{
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glMatrixMode(GL_MODELVIEW);  


    //glLoadIdentity();                 
    //glTranslatef(1.5f, 0.0f, -7.0f);
    glBegin(GL_QUADS);
    



    glColor3f(0.0, 0.0, 0.25);

    glVertex3f(0.25,0.25,0.25);
    glVertex3f(0.25,0.25,-0.25);
    glVertex3f(-0.25,0.25,0.25);
    glVertex3f(-0.25,0.25,-0.25);
    

    glColor3f(0.0, 0.25, 0.0);
    glVertex3f(0.25,-0.25,0.25);
    glVertex3f(0.25,-0.25,-0.25);
    glVertex3f(-0.25,-0.25,0.25);
    glVertex3f(-0.25,-0.25,-0.25);

    glColor3f(0.0, 0.25, 0.25);
    glVertex3f(0.25,0.25,0.25);
    glVertex3f(0.25,0.25,-0.25);
    glVertex3f(0.25,-0.25,0.25);
    glVertex3f(0.25,-0.25,-0.25);


    glColor3f(0.25, 0.0, 0.25);
    glVertex3f(-0.25,0.25,0.25);
    glVertex3f(-0.25,0.25,-0.25);
    glVertex3f(-0.25,-0.25,0.25);
    glVertex3f(-0.25,-0.25,-0.25);

    glColor3f(0.25, 0.0, 0.0);
    glVertex3f(0.25,0.25,0.25);
    glVertex3f(0.25,-0.25,0.25);
    glVertex3f(-0.25,0.25,0.25);
    glVertex3f(-0.25,-0.25,0.25);


    glColor3f(0.25, 0.25, 0.0);
    glVertex3f(0.25,0.25,-0.25);
    glVertex3f(0.25,-0.25,-0.25);
    glVertex3f(-0.25,0.25,-0.25);
    glVertex3f(-0.25,-0.25,-0.25);

    

    glEnd();
    glutSwapBuffers(); 
    glFlush();
}
/*
void mouse(int button, int state, int x, int y){


	glRotatef( rotate_x, 0.25, 0.0, 0.0 );
  	glRotatef( rotate_y, 0.0, 0.25, 0.0 );

	if(button==GLUT_LEFT_BUTTON && state==GLUT_DOWN){
		rotate_y += 10;
		

		
	}
	else if(button==GLUT_RIGHT_BUTTON && state==GLUT_DOWN){
		rotate_y -= 10;

	}
	glutPostRedisplay();
}*/


void Keys( int key, int x, int y ) 
{
 
  //  Right arrow - increase rotation by 5 degree
  if (key == GLUT_KEY_RIGHT)
    glRotatef( 45.0, 0.0, 1.0, 0.0);
 
  //  Left arrow - decrease rotation by 5 degree
  else if (key == GLUT_KEY_LEFT)
    glRotatef( -45.0, 0.0, 1.0, 0.0) ;
  else if (key == GLUT_KEY_UP)
	glRotatef( 45.0, 1.-0, 0.0, 0.0) ;
  else if (key == GLUT_KEY_DOWN)
	glRotatef( -45.0, 1.0, 0.0, 0.0) ;

	
	
  //  Request display update
  glutPostRedisplay();
 
}

int main(int argc, char** argv)
{
    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_SINGLE);
    
    glutInitWindowSize(1000, 1000);
    glutInitWindowPosition(1000, 1000);

    //glutMouseFunc(mouse);
    
    glutCreateWindow("3 D");
    
    glutDisplayFunc(displayMe);
    initGL();
    glutSpecialFunc(Keys);
    
    glutMainLoop();
    return 0;
}
