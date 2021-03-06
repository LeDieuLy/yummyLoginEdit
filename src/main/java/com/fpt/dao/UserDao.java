package com.fpt.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.fpt.model.Users;

@Transactional
@Repository
public class UserDao {

	private final SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

	@SuppressWarnings("unchecked")
//	@Override
	public List<Users> all() {
		Session session = sessionFactory.openSession();
		List<Users> list = session.createQuery("select count(*) from Users").list();
		return list;
	}

	@SuppressWarnings("unchecked")
//	@Override
	public List<Users> filterByStatus(int value) {
		Session session = sessionFactory.openSession();
		List<Users> list = session.createQuery("From Users where status ='" + value + "'").list();
		return list;
	}

	public Users checkLogin(String username, String password, String key) {
		Session session = sessionFactory.openSession();
		Users user = (Users) session
				.createQuery("from Users where " + key + "='" + username + "' and password ='" + password + "'")
				.uniqueResult();
		return user;
	}

//	@Override
	public Users findByID(int id) {
		try {
			Session session = sessionFactory.openSession();
			Users user = (Users) session.get(Users.class, id);
			return user;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}

	}

	public boolean setStatus(Integer id, int value, String time) {
		Session ses = sessionFactory.openSession();
		try {
			ses.getTransaction().begin();
			Query query = (Query) ses.createQuery(
					"update Users set status ='" + value + "', block_date ='" + time + "' where id = '" + id + "'");
			query.executeUpdate();
			ses.getTransaction().commit();
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			ses.close();
		}
		return true;
	}

	public boolean changeRole(Integer id, int value) {
		Session ses = sessionFactory.openSession();
		try {
			ses.getTransaction().begin();
			Query query = (Query) ses.createQuery("update Users set role ='" + value + "' where id = '" + id + "'");
			query.executeUpdate();
			ses.getTransaction().commit();
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			ses.close();
		}
		return true;
	}

	public Boolean ChangePassword(String phone, String password) {
		Session ses = sessionFactory.openSession();

		try {
			ses.getTransaction().begin();
			Query query = (Query) ses
					.createQuery("UPDATE Users SET password = '" + password + "' WHERE (phone = '" + phone + "')");
			query.executeUpdate();
			ses.getTransaction().commit();
			return true;
		} catch (Exception e) {
			System.out.println(e);
			return false;
		}

	}

//	@Override
	public Boolean Update(Users user) {
		Session session = sessionFactory.openSession();
		try {
			session.getTransaction().begin();
			session.update(user);
			session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			System.out.println(e);
			if (session.getTransaction() != null) {
				session.getTransaction().rollback();
			}
			return false;
		} finally {
			session.close();
		}
	}

//	@Override
	public Boolean Create(Users user) {
		Session session = sessionFactory.openSession();
		try {
			session.getTransaction().begin();
			session.save(user);
			session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			System.out.println(e);
			if (session.getTransaction() != null) {
				session.getTransaction().rollback();
			}
			return false;
		} finally {
			session.close();
		}
	}

//	@Override
	public Boolean Delete(int id) {
		// TODO Auto-generated method stub
		return null;
	}

//	@Override
	public Users setCurrent(String phone, String key) {
		try {
			Session session = sessionFactory.openSession();
			Users user = (Users) session.createQuery("FROM Users WHERE " + key + " ='" + phone + "'").uniqueResult();
			return user;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}

//	@Override
	public List<Users> findByEmail(String email) {
		// TODO Auto-generated method stub
		return null;
	}

}
